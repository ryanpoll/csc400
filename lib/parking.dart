import 'package:flutter/material.dart';

class Parking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Parking'),
      ),
      body: Center(
        child: ElevatedButton(
            child: const Text('Back To Home Screen'),
            // brings back to home screen
            onPressed: () => Navigator.pop(context)),
      ),
    );
  }
}
