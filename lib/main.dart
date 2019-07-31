import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './mapScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color.fromRGBO(235, 212, 145, 1),
      ),
      home: MapScreen()
      //MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var _hasUsedAppBefore = false;


  Future<bool> _getUsedAppBefore() async {
    final prefs = await SharedPreferences.getInstance();
    final alreadyUsed = prefs.getBool('usedAppBefore');
    if (alreadyUsed == null) {
      prefs.setBool('usedAppBefore', true);
      return false;
    }
    return alreadyUsed;
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void _onAfterBuild(BuildContext context) async {
    await _checkIfFirstUseOfApp();
    if (!_hasUsedAppBefore) {
      await showDialog<String>(
        context: context,
        builder: (BuildContext context) =>
            Dialog( backgroundColor: Colors.amber,
              child: Container(
                height: 100,
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.white,
                      ),
                      child: Row(children: <Widget>[
                        Expanded(child: Container(
                            child: Text('title')
              ),
            ),

                        Icon(Icons.close),
                      ],
                      ),
                    ),
                    Container(
                      child:Center(
                        child: Text('Test String'),
                      ),
                    )
                  ],
                ),
              ),
            ),
      );
    }
  }

  Future<void> _checkIfFirstUseOfApp() async {

    final appUsage = await _getUsedAppBefore();
    //setState(() {
      _hasUsedAppBefore = appUsage;
    //});
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) => _onAfterBuild(context));
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
