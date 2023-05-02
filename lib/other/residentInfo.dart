import 'package:flutter/material.dart';
import 'res_details.dart';
import 'styles.dart';
import 'halls.dart';
import 'res_details.dart';



class ResidentInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(221, 2, 18, 200),        
          centerTitle: true,
          title: Text('Residence Halls', style: ThemeText.otherAppBars),
          
        ),
        body: ListView.builder(
            itemCount: resList.length,
            itemBuilder: (context, index) {
              ResHalls hall = resList[index];
              return Card(
                child: ListTile(
                  title: Text(hall.name),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResidentDetails(hall)));
                  },
                ),
              );
            }));
  }
  
}

