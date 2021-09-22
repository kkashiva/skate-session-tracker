import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './session.dart';

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

class MyHomePage extends StatelessWidget {
  final List<Session> sessions = [
    Session(
        id: 's1',
        location: 'B6',
        start: DateTime.parse("2021-09-22 18:00:00"),
        end: DateTime.parse("2021-09-22 19:30:00")),
    Session(
        id: 's2',
        location: 'Malcha Marg',
        start: DateTime.parse("2021-09-23 07:00:00"),
        end: DateTime.parse("2021-09-23 07:30:00"))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Skate Session Tracker'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Card(
              child: Text(
                'Week Stats',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 20,
                ),
              ),
              color: Color(0xff23a455),
              elevation: 5,
            ),
            Column(
              children: sessions.map((s) {
                return Card(
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Text(
                            s.sessionDuration().toString(),
                            style: TextStyle(
                                color: Color(0xffffffff), fontSize: 22),
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: (s.sessionDuration() < 60)
                                ? Colors.lightGreen.shade300
                                : (s.sessionDuration() < 120)
                                    ? Colors.green.shade500
                                    : Color(0xff23a455),
                          ),
                          padding: EdgeInsets.all(10),
                          margin:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                s.location,
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(DateFormat.E().format(s.start),
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey)),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          width: 200,
                        ),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    ),
                    width: double.infinity,
                    height: 60,
                  ),
                );
              }).toList(),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
        ),
        width: double.infinity,
      ),
    );
  }
}
