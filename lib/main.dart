import 'dart:async';
import 'package:flutter/material.dart';
import './transportation.dart';
import './campusmap.dart';
import './food.dart';
import './hootloot.dart';
import './parking.dart';
import './other.dart';
import './styles.dart';

// main function calls runApp() which takes a widget as argument
// to create the layout
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(150, 150),
                  backgroundColor: Color.fromARGB(221, 2, 18, 200)))),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// start up screen
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SecondScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        // change to Southern logo?
        child: FlutterLogo(size: MediaQuery.of(context).size.height));
  }
}

// main menu
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(221, 2, 18, 200),
          title: const Text('SCSU Resources', style: ThemeText.appBarText),
        ),
        body: Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    child: const Text('Campus Map'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => CampusMap()));
                    },
                  ),
                  ElevatedButton(
                    child: const Text('Parking'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Parking()));
                    },
                  ),
                  ElevatedButton(
                    child: const Text('Hoot Loot'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => HootLoot()));
                    },
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    child: const Text('Food'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Food()));
                    },
                  ),
                  ElevatedButton(
                    child: const Text('Transportation'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  Transportation()));
                    },
                  ),
                  ElevatedButton(
                    child: const Text('Other'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Other()));
                    },
                  )
                ],
              ),
            ])));
  }
}
