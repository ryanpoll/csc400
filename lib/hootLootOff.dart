import 'package:flutter/material.dart';
import 'styles.dart';
import 'off_campus.dart';
import 'store_details_off.dart';



class HootLootOff extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Off Campus'),
        ),
        body: ListView.builder(
            itemCount: storeList.length,
            itemBuilder: (context, index) {
              OffCampus store = storeList[index];
              return Card(
                child: ListTile(
                  title: Text(store.name),
                  subtitle: Text(store.address.toString()),
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
