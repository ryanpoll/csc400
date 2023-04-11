import 'package:flutter/material.dart';
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
                  food.phone.toString(),
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
                child: Text(
                  food.menu.toString(),
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
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  food.description,
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
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  food.foodOffered,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
        
