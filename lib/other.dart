import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import './upcomingEvents.dart';
import './academicDates.dart';


class Other extends StatelessWidget {
   static const String routeName = '/other';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(221, 2, 18, 200),
        title: const Text('Other Resources'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

            ElevatedButton(
                child: const Text('Housing'),
                style: ElevatedButton.styleFrom(
                      fixedSize: const Size(220, 70),
                      backgroundColor: Color.fromARGB(221, 2, 18, 200)),
                onPressed: () => Navigator.pop(context)),
                ElevatedButton(
                child: const Text('Upcoming Events'),
                style: ElevatedButton.styleFrom(
                      fixedSize: const Size(220, 70),
                      backgroundColor: Color.fromARGB(221, 2, 18, 200)),
                onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context)=>  TableBasicsExample()))),
            ElevatedButton(child: const Text('Academic Dates'),
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(220, 70),
                      backgroundColor: Color.fromARGB(221, 2, 18, 200)),
                  onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context)=> NotesScreen()))),
              ]
              ),
      
    ));
  }
}
