import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'styles.dart';

void setState(Null Function() param0) {}

class Transportation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: () => Navigator.of(context).pop(),),
          backgroundColor: Color.fromARGB(221, 2, 18, 200),
          title: Text(
            'Transportation',
            style: ThemeText.otherAppBars,
          ),
          centerTitle: true,
        ),
        body: Center(
          child: RichText(
            text: TextSpan(
              children: [
                // ignore: prefer_const_constructors
                TextSpan(
                  text: 'Important Links \n\n\n',
                  style: TextStyle(
                      color: Color.fromARGB(221, 2, 18, 200),
                      fontWeight: FontWeight.bold,
                      fontSize: 55,
                      decoration: TextDecoration.underline),
                ),
                TextSpan(
                  text: 'On-Campus Shuttle Service \n\n',
                  style: TextStyle(
                      color: Color.fromARGB(221, 2, 18, 200), fontSize: 30),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch(
                          'https://southernconnecticutstateuniversity.passiogo.com');
                    },
                ),
                // ignore: prefer_const_constructors

                TextSpan(
                  text: 'Off-Campus Live Bus Tracker \n\n\n',
                  style: TextStyle(
                      color: Color.fromARGB(221, 2, 18, 200), fontSize: 30),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch(
                          'https://www.train-us.com/schedules/us-ct/cttransit-new-haven');
                    },
                ),

                TextSpan(
                  text: 'Request a U-pass \n\n',
                  style: TextStyle(
                      color: Color.fromARGB(221, 2, 18, 200), fontSize: 30),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch(
                          'https://hootloot.southernct.edu/benefits/upassrequest.php');
                    },
                ),

                TextSpan(
                  text: 'Register Your Car',
                  style: TextStyle(
                      color: Color.fromARGB(221, 2, 18, 200), fontSize: 30),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch(
                          'https://forms.office.com/Pages/ResponsePage.aspx?id=Y2hzWA7WzkCVxgcjx-qvZ_Dg42_wrPNPmnMJbC2RUU5UMFpGNlJCR1laNFJYSTRJWkU2RkIxVkpOSC4u');
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
