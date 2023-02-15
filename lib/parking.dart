import 'package:flutter/material.dart';

void setState(Null Function() param0) {}

class Parking extends StatelessWidget {
  String? _selected;
  List<Map> _myJson = [
    {
      'id': '1',
      'image': 'images/FitchStreetGarage.jpg',
      'name': 'Fitch Street Garage'
    },
    {
      'id': '2',
      'image': 'images/WestCampusGarage.png',
      'name': 'West Campus Garage'
    },
    {
      'id': '3',
      'image': 'images/WintergreenGarage.jpg',
      'name': 'Wintergreen Garage'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Dropdown List With Images')),
        body: Center(
          child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: DropdownButtonHideUnderline(
                              child: ButtonTheme(
                                  alignedDropdown: true,
                                  child: DropdownButton(
                                    hint: Text('Select Garage'),
                                    value: _selected,
                                    onChanged: (newValue) {
                                      setState(() {
                                        _selected = newValue;
                                      });
                                    },
                                    items: _myJson.map((garageItem) {
                                      return DropdownMenuItem(
                                          value: garageItem['id'].toString(),
                                          child: Row(children: [
                                            Image.asset(garageItem['image'],
                                                width: 25),
                                            Container(
                                              margin: EdgeInsets.only(left: 10),
                                              child: Text(garageItem['name']),
                                            )
                                          ]));
                                    }).toList(),
                                  ))))
                    ],
                  ))
              // child: const Text('Back To Home Screen'),
              // // brings back to home screen
              // onPressed: () => Navigator.pop(context)),
              ),
        ));
  }
}
