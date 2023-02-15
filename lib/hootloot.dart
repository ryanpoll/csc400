import 'package:flutter/material.dart';
import 'package:flutter_application_1/hootLootOn.dart';
import 'package:flutter_application_1/hootLootOff.dart';

class HootLoot extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 21, 255),
          title: const Text(
            'HootLoot',
          ),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: const Text('On Campus'),
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(220, 70),
                      backgroundColor: Color.fromARGB(255, 0, 21, 255)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => HootLootOn()));
                  },
                ),
                ElevatedButton(
                  child: const Text('Off Campus'),
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(220, 70),
                      backgroundColor: Color.fromARGB(255, 0, 21, 255)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                            builder: (BuildContext context) => HootLoot()));
                  },
                ),
              ]),
        ));
  }
}
