import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'styles.dart';
import 'halls.dart';
import 'foodPlacesInfo.dart';

class FoodDetails extends StatelessWidget {
  final FoodLocations food;

  FoodDetails(this.food);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(221, 2, 18, 200),
        centerTitle: true,
        title: Text(food.name),
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
                  style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'RedHatDisplay'),
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
                  style: GoogleFonts.lato(
                      fontSize: 17.0, fontStyle: FontStyle.italic),
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
                child: InkWell(
                    onTap: () {
                      if (food.directions == false) {
                        launch(food.menuURL.toString());
                      } else {
                        var lat = food.location.latitude;
                        var long = food.location.longitude;
                        launch('http://www.google.com/maps/place/$lat,$long');
                      }
                    },
                    child: Container(
                      height: 20,
                      alignment: Alignment.center,
                      child: Text(food.text.toString(),
                          style: GoogleFonts.lato(
                              fontSize: 17.0,
                              decoration: TextDecoration.underline,
                              color: ThemeText.mainColor)),
                    )),
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
                  style: TextStyle(fontSize: 17.0, fontStyle: FontStyle.italic),
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
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  food.description,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.lato(fontSize: 19),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  food.foodOffered,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.lato(fontSize: 19),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
