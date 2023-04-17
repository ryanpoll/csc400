import 'package:flutter/material.dart';
import 'styles.dart';
import 'parking_model.dart';
import 'parking_details.dart';

class Parking extends StatefulWidget {
  const Parking({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Parking> {
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
