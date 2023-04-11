// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_1/hootLootOn.dart';
import 'package:flutter_application_1/hootLootOff.dart';
import 'styles.dart';
import 'package:google_fonts/google_fonts.dart';

class HootLoot extends StatelessWidget {
  const HootLoot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: ThemeText.mainColor,
          title: Text('Hoot Loot',
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600)),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('images/hootLootCard.png',
                    width: 350.0, height: 220.0),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 15, 20, 30),
                  child: Text(
                      "The SCSU Hoot Loot card provides access to residence halls, meal plans, computer labs, and also functions as your library card. Below you can find On Campus and Off Campus locations where you can use your Hoot Loot card.",
                      style: GoogleFonts.lato(
                          fontSize: 19, wordSpacing: 3, color: Colors.black)),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                  child: ElevatedButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'On Campus',
                          style: ThemeText.otherButtonText,
                          textAlign: TextAlign.center,
                        ),
                        Image.asset('images/onCampus.png',
                            width: 50.0, height: 50.0)
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(220, 90),
                        shadowColor: ThemeText.mainColor,
                        elevation: 10.0,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => HootLootOn()));
                    },
                  ),
                ),
                ElevatedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Off Campus',
                        style: ThemeText.otherButtonText,
                        textAlign: TextAlign.center,
                      ),
                      Image.asset('images/gps.png', width: 50.0, height: 50.0)
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(220, 90),
                      shadowColor: ThemeText.mainColor,
                      elevation: 10.0,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => HootLootOff()));
                  },
                ),
              ]),
        ));
  }
}
