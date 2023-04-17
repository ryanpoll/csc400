import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/styles.dart';
import 'package:url_launcher/url_launcher.dart';
import 'parking_model.dart';
import 'parking_details.dart';
import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Parking());
}

class Parking extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parking Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class GraphScreen extends StatefulWidget {
  @override
  _GraphScreenState createState() => _GraphScreenState();
}

class _GraphScreenState extends State<GraphScreen> {
  final List<Feature> features = [
    Feature(
      title: "Wintergreen",
      color: Colors.blue,
      data: [0.3, 0.6, 0.8, 0.9, 1, 1.2],
    ),
    Feature(
      title: "West Campus",
      color: Colors.black,
      data: [1, 0.8, 0.6, 0.7, 0.3, 0.1],
    ),
    Feature(
      title: "Fitch Street",
      color: Colors.orange,
      data: [0.4, 0.2, 0.9, 0.5, 0.6, 0.4],
    ),
    Feature(
      title: "Lot 3",
      color: Colors.red,
      data: [0.5, 0.2, 0, 0.3, 1, 1.3],
    ),
    Feature(
      title: "Lot 9",
      color: Colors.green,
      data: [0.25, 0.6, 1, 0.5, 0.8, 1, 4],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        title: Text("Parking Capacity Graph"),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 64.0),
            child: Text(
              "Parking",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ),
          LineGraph(
            features: features,
            size: Size(420, 450),
            labelX: ['Day 1', 'Day 2', 'Day 3', 'Day 4', 'Day 5', 'Day 6'],
            labelY: ['25%', '45%', '65%', '75%', '85%', '100%'],
            showDescription: true,
            graphColor: Colors.black87,
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  static List<String> name = [
    'Wintergreen Garage \n(North Campus)',
    'West Campus Garage \n(West Campus)',
    'Fitch Street Garage  \n(East Campus)',
    'Parking Lot 3  \n(West Campus)',
    'Parking Lot 9  \n(West Campus)'
  ];

  static List garage = [
    'https://www.blcompanies.com/wp-content/uploads/2014/10/SCSUParkingGarageCT_htm_5f93e1f2.jpg',
    'https://inside.southernct.edu/sites/default/files/media-images/2022-01/GARAGE.jpg',
    'https://news.southernct.edu/wp-content/uploads/2020/03/Screen-Shot-2020-01-20-at-8.50.27-AM.png',
    'https://fastly.4sqi.net/img/general/width960/230059_KY9ItLvNmz17nEFizOGHIGWR4LU_Y1cN2izc5Pqq8ew.jpg',
    'https://inside.southernct.edu/sites/default/files/scsu_2018_solar_panels-6052.jpg'
  ];

  static List graph = [
    'images/WintergreenGraph.png',
    'images/WestCampusGraph.png',
    'images/FitchStreetGraph.png',
    'images/Lot3Graph.png',
    'images/Lot9Graph.png',
  ];

  static List address = [
    '11 Wintergreen Ave New Haven, Connecticut 06515 ',
    'To left of Hickerson Hall ',
    'In front of Davis Hall ',
    'Behind Connecticut Hall on Farnham Ave ',
    'Across from Barak Obama Elementary on Farnham Ave '
  ];

  final List<ParkingDataModel> parkingdata = List.generate(
      name.length,
      (index) => ParkingDataModel('${name[index]}', '${garage[index]}',
          '${graph[index]}', 'Located: ' '${address[index]}'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                child: Text("Campus Parking",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w600)),
              )),
            )),
        body: ListView.builder(
            padding: EdgeInsets.fromLTRB(10, 50, 10, 25),
            itemCount: parkingdata.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(parkingdata[index].name),
                  leading: SizedBox(
                    width: 160,
                    height: 150,
                    child: Image.network(parkingdata[index].garage),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ParkingDetail(
                              parkingDataModel: parkingdata[index],
                            )));
                  },
                ),
              );
            }));
  }
}
