import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import './other.dart';

class NotesScreen extends StatefulWidget {
  NotesScreen({Key? key}) : super(key: key);

  @override
  _NotesScreenState createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // disableScreen();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(color: Colors.white),
          height: 50,
          alignment: Alignment.bottomCenter,
          child: IconButton(
              onPressed: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SecondScreen()));
              },
              icon: const Icon(
                Icons.home,
                color: Colors.black,
                size: 25,
              )),
        ),
        body: SafeArea(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Color(0xFFffffff),
              child: SingleChildScrollView(
                child: Column(children: [
                  Container(
                    decoration: BoxDecoration(color: Color(0xDD0212C8)),
                    //height: MediaQuery.of(context).size.height * 0.7,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton.icon(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                  Icons.arrow_back_ios_new,
                                  color: Colors.white,
                                ),
                                label: const Text(
                                  "Back",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontFamily: 'RedHatDisplay',
                                      fontWeight: FontWeight.bold),
                                )),
                            
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.0),
                          child: Text(
                            'Academic Calendar',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontFamily: 'RedHatDisplay',
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: const Text(
                          "The primary dates for each semester or intersession are outlined below.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'RedHatDisplay',
                          ),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Fall Semester',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'RedHatDisplay',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: const Text(
                          "August 28, 2023                Faculty Academic Year Begins.",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'RedHatDisplay',
                          ),
                        )),
                  ),
                   Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: const Text(
                          "August 29, 2023	                                 First Day of Classes",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'RedHatDisplay',
                          ),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: const Text(
                          "September 4, 2023	                             Holiday, No Classes",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'RedHatDisplay',
                          ),
                        )),
                  ),
                    Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: const Text(
                          "November 22-26, 2023	       Holiday Recess, No Classes",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'RedHatDisplay',
                          ),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: const Text(
                          "December 10, 2023	                           Last Day of Classes",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'RedHatDisplay',
                          ),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: const Text(
                          "December 11-17, 2023	                      Final Examinations",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'RedHatDisplay',
                          ),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Winter Intersession',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'RedHatDisplay',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: const Text(
                          "December 18, 2023                            First Day of Classes",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'RedHatDisplay',
                          ),
                        )),
                  ),
                   Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: const Text(
                          "December 25, 2023	             Holiday Recess, No Classes",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'RedHatDisplay',
                          ),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: const Text(
                          "January 1, 2024	                   Holiday Recess, No Classes",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'RedHatDisplay',
                          ),
                        )),
                  ),
                    Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: const Text(
                          "January 14, 2024	                               Last Day of Classes",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'RedHatDisplay',
                          ),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Spring Semester',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'RedHatDisplay',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: const Text(
                          "January 17, 2023                                First Day of Classes",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'RedHatDisplay',
                          ),
                        )),
                  ),
                   Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: const Text(
                          "February 16-19, 2024   	       Holiday Recess, No Classes",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'RedHatDisplay',
                          ),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: const Text(
                          "March 11-17, 2024	                Spring Recess, No Classes",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'RedHatDisplay',
                          ),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: const Text(
                          "March 29-31, 2024	Day of Reflection Recess, No Classes",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'RedHatDisplay',
                          ),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: const Text(
                          "May 5, 2024	                                        Last Day of Classes",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'RedHatDisplay',
                          ),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: const Text(
                          "May 6-12, 2024	                                    Final Examinations",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'RedHatDisplay',
                          ),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: const Text(
                          "May 31, 2024                       	Faculty Academic Year Ends",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'RedHatDisplay',
                          ),
                        )),
                  ),
                  
                  
                ]),
              ),
            )));
  }
}
