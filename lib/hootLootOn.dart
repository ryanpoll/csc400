import 'package:flutter/material.dart';
import 'package:flutter_application_1/parking.dart';
import 'styles.dart';
import 'on_campus.dart';
import 'store_details_on.dart';



class HootLootOn extends StatelessWidget {
  Icon customIcon = const Icon(Icons.search);
  Widget customSearchBar = const Text('My Personal Journal');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(221, 2, 18, 200),
          centerTitle: true,
          title: Text('On Campus', style: ThemeText.otherAppBars),
          
        ),
      
        body: ListView.builder(
            itemCount: storeList.length,
            itemBuilder: (context, index) {
              OnCampus store = storeList[index];
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
