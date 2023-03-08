import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

void setState(Null Function() param0) {}

class Transportation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Transportation'),
        ),
        body: Center(
          child: RichText(
            text: TextSpan(
              children: [
                // ignore: prefer_const_constructors
                TextSpan(
                  text: 'Here is the link to the ',
                  style: TextStyle(color: Colors.black),
                ),
                TextSpan(
                  text: 'On-Campus Shuttle Service \n\n',
                  style: TextStyle(color: Colors.blue),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch(
                          'https://southernconnecticutstateuniversity.passiogo.com');
                    },
                ),
                // ignore: prefer_const_constructors
                TextSpan(
                  text: 'Here is the link to the ',
                  style: TextStyle(color: Colors.black),
                ),
                TextSpan(
                  text: 'Off-Campus Live Bus Tracker \n\n\n\n',
                  style: TextStyle(color: Colors.blue),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch(
                          'https://www.train-us.com/schedules/us-ct/cttransit-new-haven');
                    },
                ),
                TextSpan(
                  text: 'Here is the link to ',
                  style: TextStyle(color: Colors.black),
                ),
                TextSpan(
                  text: 'Request a Upass',
                  style: TextStyle(color: Colors.blue),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch(
                          'https://hootloot.southernct.edu/benefits/upassrequest.php');
                    },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Scaffold build(BuildContext context) {
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
