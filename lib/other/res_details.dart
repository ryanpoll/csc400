import 'package:flutter/material.dart';
import 'styles.dart';
import 'halls.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';




class ResidentDetails extends StatelessWidget {
  final ResHalls hall;

  ResidentDetails(this.hall);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(221, 2, 18, 200),
        centerTitle: true,
        title: Text(hall.name, style: GoogleFonts.lato(
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
                hall.imageUrl,
                height: 300,
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Text(
                  hall.address.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold,
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
                  hall.phone.toString(),
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
                padding: const EdgeInsets.all(6.0),
                child: InkWell(
                    onTap: () {
                     {
                        launch(hall.websiteURL.toString());
                      } 
                    },
                    child: Container(
                      height: 20,
                      alignment: Alignment.center,
                      child: Text(hall.text.toString(),
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
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  hall.description,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              const Divider(
                color: Colors.grey,
                height: 2.5,
                thickness: 0.5,
                indent: 0,
                endIndent: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
        
