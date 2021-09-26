import 'package:flutter/material.dart';
import './session_add_input.dart';
import './session_list.dart';
import '../models/session.dart';

class UserSessions extends StatefulWidget {
  @override
  _UserSessionsState createState() => _UserSessionsState();
}

class _UserSessionsState extends State<UserSessions> {
  final List<Session> _userSessions = [
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

  void _addNewSession(String newLocation) {
    final newSession = Session(
        id: DateTime.now().toString(),
        location: newLocation,
        start: DateTime.parse("2021-09-23 07:00:00"),
        end: DateTime.parse("2021-09-23 07:30:00"));

    setState(() {
      _userSessions.add(newSession);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SessionAddInput(_addNewSession),
      SessionList(_userSessions)
    ]);
  }
}
