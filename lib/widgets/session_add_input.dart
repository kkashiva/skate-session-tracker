import 'package:flutter/material.dart';

class SessionAddInput extends StatelessWidget {
  final locationController = TextEditingController();
  final Function addSessionHandler;

  SessionAddInput(this.addSessionHandler);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
          child: Column(
            children: [
              TextField(
                controller: locationController,
                decoration: InputDecoration(labelText: 'Location'),
              ),
              ElevatedButton(
                  onPressed: () {
                    addSessionHandler(locationController.text);
                  },
                  child: Text('Add Session'))
            ],
            crossAxisAlignment: CrossAxisAlignment.end,
          ),
          padding: EdgeInsets.all(5),
        ),
        elevation: 5);
  }
}
