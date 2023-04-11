import 'package:flutter/material.dart';
import 'styles.dart';
import 'foodPlacesInfo.dart';
import 'foodDetails.dart';


class Food extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(221, 2, 18, 200),
        title: const Text('Food', style: ThemeText.otherAppBars),
      ),
      body: ListView.builder(
            itemCount: foodList.length,
            itemBuilder: (context, index) {
              FoodLocations food = foodList[index];
              return Card(
                child: ListTile(
                  title: Text(food.name),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FoodDetails(food)));
                  },
                ),
              );
            }),
    );
  }
}
