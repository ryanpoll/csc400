import 'package:flutter/material.dart';

class Transportation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transportation'),
      ),
      body: Center(
        child: ElevatedButton(
            child: const Text('Back To Home Screen'),
            onPressed: () => Navigator.pop(context)),
      ),
    );
  }
}
