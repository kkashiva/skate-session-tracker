import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './widgets/session_stats_card.dart';
import './widgets/user_sessions_stateful.dart';

main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skate Session Tracker',
      home: MyHomePage(),
    );
  }
}
// Do I still got it?
// Oh yes!

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Skate Session Tracker'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[SessionStatsCard(), UserSessions()],
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
        ),
        width: double.infinity,
      ),
    );
  }
}
