import 'package:flutter/material.dart';

class SessionStatsCard extends StatelessWidget {
  const SessionStatsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      //Week Stats
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
    );
  }
}
