// import 'package:flutter/material.dart';

// void setState(Null Function() param0) {}

// class Parking extends StatelessWidget {
//   String? _selected;
//   // ignore: prefer_final_fields
//   List<Map> _myJson = [
//     {
//       'id': '1',
//       'image': 'images/FitchStreetGarage.jpg',
//       'name': 'Fitch Street Garage'
//     },
//     {
//       'id': '2',
//       'image': 'images/WestCampusGarage.png',
//       'name': 'West Campus Garage'
//     },
//     {
//       'id': '3',
//       'image': 'images/WintergreenGarage.jpg',
//       'name': 'Wintergreen Garage'
//     }
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: const Text('Parking Options')),
//         body: Center(
//           child: Padding(
//               padding: const EdgeInsets.only(left: 10, right: 10),
//               child: Container(
//                   padding: const EdgeInsets.only(left: 10, right: 10),
//                   decoration: BoxDecoration(
//                       border: Border.all(width: 1, color: Colors.blue),
//                       borderRadius: BorderRadius.circular(10)),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Expanded(
//                           child: DropdownButtonHideUnderline(
//                               child: ButtonTheme(
//                                   alignedDropdown: true,
//                                   child: DropdownButton(
//                                     hint: Text('Select Garage'),
//                                     value: _selected,
//                                     onChanged: (newValue) {
//                                       setState(() {
//                                         _selected = newValue;
//                                       });
//                                     },
//                                     items: _myJson.map((garageItem) {
//                                       return DropdownMenuItem(
//                                           value: garageItem['id'].toString(),
//                                           child: Row(children: [
//                                             Image.asset(garageItem['image'],
//                                                 width: 25),
//                                             Container(
//                                               margin: EdgeInsets.only(left: 10),
//                                               child: Text(garageItem['name']),
//                                             )
//                                           ]));
//                                     }).toList(),
//                                   ))))
//                     ],
//                   ))
//               // child: const Text('Back To Home Screen'),
//               // // brings back to home screen
//               // onPressed: () => Navigator.pop(context)),
//               ),
//         ));
//   }
// }
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
      title: 'Flutter Demo',
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
      title: "Flutter",
      color: Colors.blue,
      data: [0.3, 0.6, 0.8, 0.9, 1, 1.2],
    ),
    Feature(
      title: "Kotlin",
      color: Colors.black,
      data: [1, 0.8, 0.6, 0.7, 0.3, 0.1],
    ),
    Feature(
      title: "Java",
      color: Colors.orange,
      data: [0.4, 0.2, 0.9, 0.5, 0.6, 0.4],
    ),
    Feature(
      title: "React Native",
      color: Colors.red,
      data: [0.5, 0.2, 0, 0.3, 1, 1.3],
    ),
    Feature(
      title: "Swift",
      color: Colors.green,
      data: [0.25, 0.6, 1, 0.5, 0.8, 1, 4],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        title: Text("Flutter Draw Graph Demo"),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 64.0),
            child: Text(
              "Tasks Management",
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
  static List<String> fruitname = [
    'Wintergreen Garage',
    'West Campus Garage',
    'Fitch Street Garage',
    'Parking Lot 3',
    'Parking Lot 9'
  ];

  static List garage = [
    'https://www.blcompanies.com/wp-content/uploads/2014/10/SCSUParkingGarageCT_htm_5f93e1f2.jpg',
    'https://inside.southernct.edu/sites/default/files/media-images/2022-01/GARAGE.jpg',
    'https://news.southernct.edu/wp-content/uploads/2020/03/Screen-Shot-2020-01-20-at-8.50.27-AM.png',
    'https://se-images.campuslabs.com/clink/images/8d6ba122-69b6-47b6-851f-43935dd2c268a80a24d8-17ab-400d-97c5-8e2d3bf9ce1e.jpg?preset=med-sq',
    'https://inside.southernct.edu/sites/default/files/scsu_2018_solar_panels-6052.jpg'
  ];

  static List graph = [
    'https://community.powerbi.com/t5/image/serverpage/image-id/296439iD4F17CD02CF31231/image-size/large?v=v2&px=999',
    'https://community.powerbi.com/t5/image/serverpage/image-id/296439iD4F17CD02CF31231/image-size/large?v=v2&px=999',
    'https://community.powerbi.com/t5/image/serverpage/image-id/296439iD4F17CD02CF31231/image-size/large?v=v2&px=999',
    'https://community.powerbi.com/t5/image/serverpage/image-id/296439iD4F17CD02CF31231/image-size/large?v=v2&px=999',
    'https://community.powerbi.com/t5/image/serverpage/image-id/296439iD4F17CD02CF31231/image-size/large?v=v2&px=999'
  ];

  static List address = [
    '11 Wintergreen Ave New Haven, Connecticut 06515 ',
    'In front of Davis Hall ',
    '100 Winter Green Ave ',
    'Behind Connecticut Hall on Farnham Ave ',
    'Across from Barak Obama Elementary on Farnham Ave '
  ];

  final List<FruitDataModel> Fruitdata = List.generate(
      fruitname.length,
      (index) => FruitDataModel('${fruitname[index]}', '${garage[index]}',
          '${graph[index]}', 'Located at: ' '${address[index]}'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(221, 2, 18, 200),
          // leading: BackButton(onPressed: () => Navigator.pop(MyHomePage())),
          title: const Text(
            'Campus Parking Options',
            style: ThemeText.otherAppBars,
          ),
        ),
        body: ListView.builder(
            itemCount: Fruitdata.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(Fruitdata[index].name),
                  leading: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.network(Fruitdata[index].garage),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FruitDetail(
                              fruitDataModel: Fruitdata[index],
                            )));
                  },
                ),
              );
            }));
  }

  // @override
  // Widget build(BuildContext context) {
  //   return new MaterialApp(
  //     home: new Scaffold(
  //       appBar: new AppBar(
  //         title: new Text('UrlLauchner'),
  //       ),
  //       body: new Center(
  //         child: new RichText(
  //           text: new TextSpan(
  //             children: [
  //               new TextSpan(
  //                 text: 'This is no Link, ',
  //                 style: new TextStyle(color: Colors.black),
  //               ),
  //               new TextSpan(
  //                 text: 'but this is',
  //                 style: new TextStyle(color: Colors.blue),
  //                 recognizer: new TapGestureRecognizer()
  //                   ..onTap = () {
  //                     launch(
  //                         'https://docs.flutter.io/flutter/services/UrlLauncher-class.html');
  //                   },
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
