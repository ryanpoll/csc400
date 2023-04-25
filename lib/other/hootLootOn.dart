import 'package:flutter/material.dart';
import 'parking.dart';
import 'styles.dart';
import 'on_campus.dart';
import 'store_details_on.dart';
import 'package:google_fonts/google_fonts.dart';

class HootLootOn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(221, 2, 18, 200),
          centerTitle: true,
          title: Text('On Campus',
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600)),
        ),
        body: ListView.builder(
            itemCount: storeList.length,
            itemBuilder: (context, index) {
              OnCampus store = storeList[index];
              return Card(
                child: ListTile(
                  title: Text(store.name,
                      style: GoogleFonts.lato(
                          fontSize: 16, wordSpacing: 1, color: Colors.black, fontWeight: FontWeight.w600)),
                  leading: Image.network(
                    store.imageUrl,
                    width: 85,
                    height: 100,
                  ),
                  trailing: Icon(Icons.arrow_forward_rounded),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StoreDetailsScreen(store)));
                  },
                ),
              );
            }));
  }
}
