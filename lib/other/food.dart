import 'package:flutter/material.dart';
import 'styles.dart';
import 'foodPlacesInfo.dart';
import 'foodDetails.dart';
import 'package:google_fonts/google_fonts.dart';


class Food extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(221, 2, 18, 200),
        centerTitle: true,
        title: Text('Food & Dining', style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600)),
      ),
      body: ListView.builder(
            itemCount: foodList.length,
            itemBuilder: (context, index) {
              FoodLocations food = foodList[index];
              return Card(
                child: ListTile(
                  title: Text(food.name, style: GoogleFonts.lato(fontSize: 16, wordSpacing: 1, color: Colors.black, fontWeight: FontWeight.w600)),
                  trailing: Icon(Icons.arrow_forward_rounded),
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
