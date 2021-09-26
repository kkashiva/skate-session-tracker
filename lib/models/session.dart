import 'package:flutter/foundation.dart';

class Session {
  final String id;
  final String location;
  final DateTime start;
  final DateTime end;
  Session(
      {required this.id,
      required this.location,
      required this.start,
      required this.end});
  int sessionDuration() {
    var sessionDuration = end.difference(start);
    return sessionDuration.inMinutes;
  }
}
