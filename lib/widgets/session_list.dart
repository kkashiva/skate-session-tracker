import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/session.dart';

class SessionList extends StatelessWidget {
  final List<Session> _sessions;
  SessionList(this._sessions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _sessions.map((s) {
        return Card(
          //Session log
          child: Container(
            child: Row(
              children: <Widget>[
                Container(
                  //Session duration
                  child: Text(
                    '${s.sessionDuration()}min',
                    style: TextStyle(color: Color(0xffffffff), fontSize: 16),
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (s.sessionDuration() < 60)
                        ? Colors.lightGreen.shade300
                        : (s.sessionDuration() < 120)
                            ? Colors.green.shade500
                            : Color(0xff23a455),
                  ),
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                ),
                Container(
                  child: Column(
                    children: [
                      Text(
                        //Session location
                        s.location,
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                          //Session Day
                          DateFormat.E().format(s.start),
                          style: TextStyle(fontSize: 16, color: Colors.grey)),
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
          ),
        );
      }).toList(),
    );
  }
}
