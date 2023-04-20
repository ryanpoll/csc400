import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import './other.dart';
import './styles.dart';
import 'package:google_fonts/google_fonts.dart';



class NotesScreen extends StatefulWidget {
  NotesScreen({Key? key}) : super(key: key);

  @override
  _NotesScreenState createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(221, 2, 18, 200),
          centerTitle: true,
          title: Text(
            'Academic Calendar', style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600)
          ),
        ),
  
        body: SafeArea(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Color(0xFFffffff),
              child: SingleChildScrollView(
                child: Column(children: [
                  
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: Text(
                          "The primary dates for each semester or intersession of Undergraduate 2023-2024 are outlined below.",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.w500, wordSpacing: 0, color: Colors.black),
                        )),
                  ),
                  const Divider(
                color: Colors.grey,
                height: 2.5,
                thickness: 0.5,
                indent: 0,
                endIndent: 0,
              ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child:  Text(
                        'Fall Semester',
                        style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold, wordSpacing: 3, color: Colors.black),
                      ),
                    ),
                  ),
                  
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: Text(
                          "August 28, 2023                      Faculty Academic Year Begins",
                          style: GoogleFonts.lato(fontSize: 15, wordSpacing: 1, color: Colors.black),
                        )),
                  ),
                   Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: Text(
                          "August 29, 2023	                                            First Day of Classes",
                          style: GoogleFonts.lato(fontSize: 15, wordSpacing: 1, color: Colors.black),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: Text(
                          "September 4, 2023	                                       Holiday, No Classes",
                          style:GoogleFonts.lato(fontSize: 15, wordSpacing: 1, color: Colors.black),
                        )),
                  ),
                    Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: Text(
                          "November 22-26, 2023	           Holiday Recess, No Classes",
                          style: GoogleFonts.lato(fontSize: 15, wordSpacing: 1, color: Colors.black),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: Text(
                          "December 10, 2023	                                     Last Day of Classes",
                          style: GoogleFonts.lato(fontSize: 15, wordSpacing: 1, color: Colors.black),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child:  Text(
                          "December 11-17, 2023	                              Final Examinations",
                          style: GoogleFonts.lato(fontSize: 15, wordSpacing: 1, color: Colors.black),
                        )),
                  ),
                  const Divider(
                color: Colors.grey,
                height: 2.5,
                thickness: 0.5,
                indent: 0,
                endIndent: 0,
              ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Winter Intersession',
                        style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold, wordSpacing: 3, color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: Text(
                          "December 18, 2023                                     First Day of Classes",
                          style: GoogleFonts.lato(fontSize: 15, wordSpacing: 1, color: Colors.black),
                        )),
                  ),
                   Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: Text(
                          "December 25, 2023	                   Holiday Recess, No Classes",
                          style: GoogleFonts.lato(fontSize: 15, wordSpacing: 1, color: Colors.black),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: Text(
                          "January 1, 2024	                            Holiday Recess, No Classes",
                          style: GoogleFonts.lato(fontSize: 15, wordSpacing: 1, color: Colors.black),
                        )),
                  ),
                    Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: Text(
                          "January 14, 2024	                                           Last Day of Classes",
                          style: GoogleFonts.lato(fontSize: 15, wordSpacing: 1, color: Colors.black),
                        )),
                  ),
                  const Divider(
                color: Colors.grey,
                height: 2.5,
                thickness: 0.5,
                indent: 0,
                endIndent: 0,
              ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Spring Semester',
                        style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold, wordSpacing: 3, color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: Text(
                          "January 17, 2023                                           First Day of Classes",
                          style: GoogleFonts.lato(fontSize: 15, wordSpacing: 1, color: Colors.black),
                        )),
                  ),
                   Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: Text(
                          "February 16-19, 2024   	            Holiday Recess, No Classes",
                          style: GoogleFonts.lato(fontSize: 15, wordSpacing: 1, color: Colors.black),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: Text(
                          "March 11-17, 2024	                       Spring Recess, No Classes",
                          style: GoogleFonts.lato(fontSize: 15, wordSpacing: 1, color: Colors.black),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: Text(
                          "March 29-31, 2024	                          Day of Reflection Recess",
                          style: GoogleFonts.lato(fontSize: 15, wordSpacing: 1, color: Colors.black),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: Text(
                          "May 5, 2024	                                                      Last Day of Classes",
                          style: GoogleFonts.lato(fontSize: 15, wordSpacing: 1, color: Colors.black),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: Text(
                          "May 6-12, 2024	                                               Final Examinations",
                          style: GoogleFonts.lato(fontSize: 15, wordSpacing: 1, color: Colors.black),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: Text(
                          "May 31, 2024                               	Faculty Academic Year Ends",
                          style: GoogleFonts.lato(fontSize: 15, wordSpacing: 1, color: Colors.black),
                        )),
                  ),
                  const Divider(
                color: Colors.grey,
                height: 2.5,
                thickness: 0.5,
                indent: 0,
                endIndent: 0,
              ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Summer Intersession',
                        style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold, wordSpacing: 3, color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: Text(
                          "May 20, 2024                                                   First Day of Classes",
                          style: GoogleFonts.lato(fontSize: 15, wordSpacing: 1, color: Colors.black),
                        )),
                  ),
                   Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: Text(
                          "May 27, 2024   	                                               Holiday, No Classes",
                          style: GoogleFonts.lato(fontSize: 15, wordSpacing: 1, color: Colors.black),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child:  Text(
                          "June 19, 2024		                                                Holiday, No Classes",
                          style: GoogleFonts.lato(fontSize: 15, wordSpacing: 1, color: Colors.black),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: Text(
                          "July 4, 2024	                                                      Holiday, No Classes",
                          style: GoogleFonts.lato(fontSize: 15, wordSpacing: 1, color: Colors.black),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: Text(
                          "August 11, 2024	                                             Last Day of Classes",
                          style: GoogleFonts.lato(fontSize: 15, wordSpacing: 1, color: Colors.black),
                        )),
                  ),
                  
                  
                  
                ]),
              ),
            )));
  }
}
