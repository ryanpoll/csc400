// ignore_for_file: sort_child_properties_last, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'styles.dart';

void setState(Null Function() param0) {}

class Transportation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: ThemeText.mainColor,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).pop(),
            ),
            centerTitle: true,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(60.0), // Set the height you want
              child: Container(
                  child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text("Transportation",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w600)),
              )),
            )),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'On-Campus Shuttle',
                      style: ThemeText.otherButtonText,
                      textAlign: TextAlign.center,
                    ),
                    Image.asset('images/shuttle.png', width: 50.0, height: 50.0)
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(330, 90),
                    shadowColor: ThemeText.mainColor,
                    elevation: 10.0,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
                onPressed: () {
                  launch(
                      'https://southernconnecticutstateuniversity.passiogo.com');
                },
              ),
              ElevatedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'CT Transit Bus Tracker',
                      style: ThemeText.otherButtonText,
                      textAlign: TextAlign.center,
                    ),
                    Image.asset('images/shuttle_bus.png',
                        width: 50.0, height: 50.0)
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(330, 90),
                    shadowColor: ThemeText.mainColor,
                    elevation: 10.0,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
                onPressed: () {
                  launch(
                      'https://www.train-us.com/schedules/us-ct/cttransit-new-haven');
                },
              ),
              ElevatedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Request a U-pass',
                      style: ThemeText.otherButtonText,
                      textAlign: TextAlign.center,
                    ),
                    Image.asset('images/train.png', width: 50.0, height: 50.0)
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(330, 90),
                    shadowColor: ThemeText.mainColor,
                    elevation: 10.0,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
                onPressed: () {
                  launch(
                      'https://hootloot.southernct.edu/benefits/upassrequest.php');
                },
              ),
              ElevatedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Register Your Car',
                      style: ThemeText.otherButtonText,
                      textAlign: TextAlign.center,
                    ),
                    Image.asset('images/car.png', width: 50.0, height: 50.0)
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(330, 90),
                    shadowColor: ThemeText.mainColor,
                    elevation: 10.0,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
                onPressed: () {
                  launch(
                      'https://forms.office.com/Pages/ResponsePage.aspx?id=Y2hzWA7WzkCVxgcjx-qvZ_Dg42_wrPNPmnMJbC2RUU5UMFpGNlJCR1laNFJYSTRJWkU2RkIxVkpOSC4u');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
