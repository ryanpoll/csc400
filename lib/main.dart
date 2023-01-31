import 'dart:async';
import 'package:flutter/material.dart';
import './transportation.dart';
import './campusmap.dart';
import './food.dart';
import './hootloot.dart';

// main function calls runApp() which takes a widget as argument
// to create the layout
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

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
        child: FlutterLogo(size: MediaQuery.of(context).size.height));
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 21, 255),
          title: const Text(
            'SCSU Resources',
          ),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: const Text('Campus Map'),
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(220, 70),
                      backgroundColor: Color.fromARGB(255, 0, 21, 255)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => CampusMap()));
                  },
                ),
                ElevatedButton(
                  child: const Text('Transportation'),
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(220, 70),
                      backgroundColor: Color.fromARGB(255, 0, 21, 255)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                Transportation()));
                  },
                ),
                ElevatedButton(
                  child: const Text('Food & Dining'),
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(220, 70),
                      backgroundColor: Color.fromARGB(255, 0, 21, 255)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Food()));
                  },
                ),
                ElevatedButton(
                  child: const Text('Hoot Loot'),
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(220, 70),
                      backgroundColor: Color.fromARGB(255, 0, 21, 255)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => HootLoot()));
                  },
                ),
              ]),
        ));
  }
}
