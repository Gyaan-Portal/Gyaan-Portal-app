import 'package:flutter/material.dart';
import 'dart:async';

import './join_screen.dart';
import './meeting_screen.dart';

class ExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example Zoom SDK',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorObservers: [],
      initialRoute: '/',
      routes: {
        '/': (context) => JoinWidget(),
        '/meeting': (context) => MeetingWidget(),
      },
    );
  }
}
