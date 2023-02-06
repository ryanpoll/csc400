import 'package:flutter/material.dart';

class Other extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Other Resources'),
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
