import 'package:flutter/material.dart';
import 'package:wiredash/wiredash.dart';
import './constants.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';

class MyAppFeedback extends StatelessWidget {
  final _navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return Wiredash(
      secret: secret,
      projectId: projectid,
      navigatorKey: _navigatorKey,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: _navigatorKey,
        home: MyHomePagefeed(),
      ),
    );
  }
}

class MyHomePagefeed extends StatefulWidget {
  _MyHomePagefeedState createState() => _MyHomePagefeedState();
}

class _MyHomePagefeedState extends State<MyHomePagefeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text('Feedback'),
        backgroundColor: Colors.indigo,
      ),
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Lottie.asset('assets/10028-feedback.json',
                  width: 300, height: 300),
              RaisedButton(
                color: Hexcolor('#6002EE'),
                onPressed: () {
                  Wiredash.of(context).show();
                },
                child: const Text(
                  'Click here for feedback ',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const Padding(padding: EdgeInsets.all(16.0)),
            ],
          ),
        ],
      ),
    );
  }
}
//FloatingActionButton(
//onPressed: () {
//Wiredash.of(context).show();
//},
//child: Icon(Icons.add),
//),
