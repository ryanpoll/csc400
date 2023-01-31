import 'package:flutter/material.dart';

class CampusMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Campus Map'),
      ),
      body: Center(
        child: ElevatedButton(
            child: const Text('Back To Home Screen'),
            onPressed: () => Navigator.pop(context)),
      ),
    );
  }
}