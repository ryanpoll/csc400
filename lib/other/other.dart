// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './upcomingEvents.dart';
import './academicDates.dart';
import "styles.dart";
import "residentinfo.dart";

class Other extends StatelessWidget {
  static const String routeName = '/other';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: ThemeText.mainColor,
          title: Text('Other Resources',
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600)),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('images/housing.png',
                            width: 100.0, height: 60.0),
                        const Text(
                          'Housing',
                          style: ThemeText.otherButtonText,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(150, 150),
                        shadowColor: const Color.fromARGB(221, 2, 18, 200),
                        elevation: 10.0,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                ResidentInfo()))),
                ElevatedButton(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('images/calendar.png',
                            width: 100.0, height: 60.0),
                        const Text(
                          'Events',
                          style: ThemeText.otherButtonText,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(150, 150),
                        shadowColor: const Color.fromARGB(221, 2, 18, 200),
                        elevation: 10.0,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const UpcomingEvents()))),
                ElevatedButton(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('images/warning.png',
                            width: 100.0, height: 60.0),
                        const Text(
                          'Academic Dates',
                          style: ThemeText.otherButtonText,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(150, 150),
                        shadowColor: const Color.fromARGB(221, 2, 18, 200),
                        elevation: 10.0,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => NotesScreen()))),
              ]),
        ));
  }
}
