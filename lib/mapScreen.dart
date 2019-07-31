import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;

import 'mapTopBar.dart';
import 'address_Tile.dart';
import 'side_menu.dart';
import 'beverages_screen.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {

  Completer<GoogleMapController> _controller = Completer();
  String _mapStyle;
  Map<MarkerId, Marker> _markers = <MarkerId, Marker>{};

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(31.212044, 29.933886),
    zoom: 18,
  );

//  static final CameraPosition _kLake = CameraPosition(
//      bearing: 192.8334901395799,
//      target: LatLng(37.43296265331129, -122.08832357078792),
//      tilt: 59.440717697143555,
//      zoom: 19.151926040649414);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    rootBundle.loadString('assets/map_style.txt').then((string) {
      _mapStyle = string;
    });
  }

  void _onAddressTap() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BeveragesScreen()),
    );
  }

  Future<BitmapDescriptor> _getAssetIcon(BuildContext context) async {
    final Completer<BitmapDescriptor> bitmapIcon =
    Completer<BitmapDescriptor>();
    final ImageConfiguration config = createLocalImageConfiguration(context);

    const AssetImage('assets/location-marker.png')
        .resolve(config)
        .addListener((ImageInfo image, bool sync) async {
      final ByteData bytes =
      await image.image.toByteData(format: ImageByteFormat.png);
      final BitmapDescriptor bitmap =
      BitmapDescriptor.fromBytes(bytes.buffer.asUint8List());
      bitmapIcon.complete(bitmap);
    });

    return await bitmapIcon.future;}

  void _add(LatLng position,String address) async{
    final MarkerId markerId = MarkerId('1');
    BitmapDescriptor markericon = await _getAssetIcon(context);

// creating a new MARKER
    final Marker marker = Marker(
        markerId: markerId,
        position: position,
        //infoWindow: InfoWindow(title: address, snippet: 'go here'),
        icon: markericon
    );

    setState(() {
      _markers[markerId] = marker;
    });}

  @override
  Widget build(BuildContext context) {
    _add(LatLng(31.212420, 29.934251), "My pin test");
    return Scaffold(
      drawer: Theme(
        data: Theme.of(context).copyWith(
        canvasColor: Colors.transparent,
      ),
        child: Drawer(
          child:
            SideMenu(),
        ),
      ),
      appBar: MapTopBar(),
      body: Stack(
        children :<Widget> [
          GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: _kGooglePlex,
          myLocationButtonEnabled: false,
          markers: Set<Marker>.of(_markers.values),
          onMapCreated: (GoogleMapController controller) {
            controller.setMapStyle(_mapStyle);
            _controller.complete(controller);
          },
        ),
//          Positioned(
//            bottom: 0.0,

              //child:
              Container(
                alignment: Alignment.bottomCenter,
                child: ListView(
                  shrinkWrap: true,

                  children: <Widget>[
                    AddressTile(onAddressTap: _onAddressTap),
                    AddressTile(onAddressTap: _onAddressTap),
                  ],
                ),
              )
          //),
      ],
      ),
    );
  }
}
