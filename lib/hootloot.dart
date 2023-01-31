import 'package:flutter/material.dart';

class HootLoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hoot Loot'),
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