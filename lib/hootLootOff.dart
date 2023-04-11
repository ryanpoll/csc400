import 'package:flutter/material.dart';
import 'styles.dart';
import 'off_campus.dart';
import 'store_details_off.dart';
import 'package:google_fonts/google_fonts.dart';



class HootLootOff extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(221, 2, 18, 200),
          centerTitle: true,
          title: Text('Off Campus', style: ThemeText.otherAppBars),
          
        ),
        body: ListView.builder(
            itemCount: storeList.length,
            itemBuilder: (context, index) {
              OffCampus store = storeList[index];
              return Card(
                child: ListTile(
                  title: Text(store.name),
                  leading: Image.network(store.imageUrl),
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

