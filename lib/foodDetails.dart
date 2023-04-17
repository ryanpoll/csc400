import 'package:flutter/material.dart';
import 'styles.dart';
import 'halls.dart';
import 'foodPlacesInfo.dart';
import 'package:google_fonts/google_fonts.dart';



class FoodDetails extends StatelessWidget {
  final FoodLocations food;

  FoodDetails(this.food);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(221, 2, 18, 200),
        centerTitle: true,
        title: Text(food.name, style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                food.imageUrl,
                height: 300,
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Text(
                  food.address.toString(),
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold ,wordSpacing: 1, color: Colors.black),
                ),
              ),  
               const Divider(
                color: Color.fromARGB(255, 212, 209, 209),
                height: 2.5,
                thickness: 0.5,
                indent: 0,
                endIndent: 0,
              ),            
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  food.phone.toString(),
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(fontSize: 16, wordSpacing: 1, color: Colors.black),
                ),
              ),
               const Divider(
                color: Color.fromARGB(255, 212, 209, 209),
                height: 2.5,
                thickness: 0.5,
                indent: 0,
                endIndent: 0,
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  food.menu.toString(),
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(fontSize: 16, wordSpacing: 1, color: Colors.black),
                ),
              ),
              const Divider(
                color: Color.fromARGB(255, 212, 209, 209),
                height: 2.5,
                thickness: 0.5,
                indent: 0,
                endIndent: 0,
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Text(
                  food.hours.toString(),
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(fontSize: 17, wordSpacing: 2, color: Colors.black, fontStyle:  FontStyle.italic),
                ),
              ), 
              const Divider(
                color: Color.fromARGB(255, 212, 209, 209),
                height: 2.5,
                thickness: 0.5,
                indent: 0,
                endIndent: 0,
              ),
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Text(
                  food.description,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.lato(fontSize: 18, wordSpacing: 1, color: Colors.black),
                ),
              ),
              const Divider(
                color: Colors.grey,
                height: 2.5,
                thickness: 0.5,
                indent: 0,
                endIndent: 0,
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  food.foodOffered,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.lato(fontSize: 18, wordSpacing: 1, color: Colors.black),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
        
