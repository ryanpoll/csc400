import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'styles.dart';
import 'off_campus.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class StoreDetailsScreen extends StatelessWidget {
  final OffCampus store;

  StoreDetailsScreen(this.store);
  
   getDirections(var lat, var long) {
    launch('http://www.google.com/maps/place/$lat,$long');
  }
    final _snippet = "Tap here to get directions";
  
 

  @override
  Widget build(BuildContext context) {
        final _snippet = "Tap here to get directions";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(221, 2, 18, 200),
        centerTitle: true,

        title: Text(store.name, style: GoogleFonts.lato(
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
                store.imageUrl,
                height: 300,
              ),
                            const Divider(
                color: Color.fromARGB(255, 212, 209, 209),
                height: 1,
                thickness: 0.5,
                indent: 0,
                endIndent: 0,
              ),
              InkWell(
                  onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => getDirections(store.position.latitude, store.position.longitude)),
                      );
                    },
                child: Container(
                    height: 20,
                    alignment: Alignment.center,
                    child: Text(_snippet,
                        style: GoogleFonts.lato(
                            fontSize: 17.0,
                            decoration: TextDecoration.underline,
                            color: Colors.blue)),
                  ))
              ,
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
                  store.phone.toString(),
                  textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                          fontSize: 16, wordSpacing: 3, color: Colors.black)                ),
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
                  store.hours.toString(),
                  textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                          fontSize: 17, wordSpacing: 3, color: Colors.black)),
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
                  store.description,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.lato(
                      fontSize: 19),
                ),
              ),
            ],
          ),
        ),
      ));

  }
}
        
