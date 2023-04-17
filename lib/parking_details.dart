import 'package:flutter/material.dart';
import 'package:flutter_application_1/styles.dart';
import 'parking_model.dart';
import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';

class ParkingDetail extends StatelessWidget {
  final ParkingDataModel parkingDataModel;

  ParkingDetail({Key? key, required this.parkingDataModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: ThemeText.mainColor,
          title: Text(parkingDataModel.name, style: ThemeText.otherAppBars),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(parkingDataModel.garage),
              Image.asset(parkingDataModel.graph),
              const SizedBox(
                height: 25,
                width: 25,
              ),
              Text(
                parkingDataModel.desc,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )
            ],
          ),
        ));
  }
}

@override
Widget build(BuildContext context) {
  var features;
  return Scaffold(
    backgroundColor: Colors.white54,
    appBar: AppBar(
      title: Text("Parking Graph"),
      automaticallyImplyLeading: false,
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 64.0),
          child: Text(
            "Capacity",
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
