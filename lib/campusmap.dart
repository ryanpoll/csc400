import 'package:flutter/cupertino.dart';
import './styles.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';
import 'map_markers.dart';

class CampusMap extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<CampusMap> {
  @override
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }

  // sets starting position to hover over Southern
  static const _initialCameraPosition =
      CameraPosition(target: LatLng(41.333973, -72.947890), zoom: 15.4);
  // controls the current map
  late GoogleMapController _googleMapController;
  // sets map type to satellite
  MapType _currentMapType = MapType.satellite;
  Set<Marker> markers = Set();
  @override
  void initState() {
    addMarkers();
    super.initState();
  }

  static const TextStyle mapKeyText = TextStyle(
      color: Colors.black,
      fontSize: 15,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.5);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromARGB(221, 2, 18, 200),
            title: const Text('Campus Map', style: ThemeText.otherAppBars),
            actions: [
              Builder(builder: (context) {
                return TextButton(
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                    child: const Text('Filter'),
                    style: TextButton.styleFrom(
                        textStyle: ThemeText.otherAppBars));
              })
            ]),
        endDrawer: const Drawer(),
        body: GoogleMap(
          markers: markers,
          initialCameraPosition: _initialCameraPosition,
          zoomGesturesEnabled: true,
          mapToolbarEnabled: false,
          mapType: _currentMapType,
          zoomControlsEnabled: false,
          cameraTargetBounds: CameraTargetBounds(LatLngBounds(
              northeast: LatLng(41.33800, -72.92543),
              southwest: LatLng(41.32664, -72.97003))),
          onMapCreated: (controller) {
            setState(() {
              _googleMapController = controller;
            });
          },
        ),
        bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            child: Container(
                height: 150,
                color: Colors.white,
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        new Image.asset('images/school_marker.png',
                            width: 36.0, height: 36.0),
                        new Image.asset('images/shuttle_marker.png',
                            width: 36.0, height: 36.0),
                        new Image.asset('images/dining_marker.png',
                            width: 36.0, height: 36.0)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Academic Buildings', style: mapKeyText),
                        Text('Shuttle Bus Stops', style: mapKeyText),
                        Text('Food & Dining', style: mapKeyText),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          new Image.asset('images/parking_marker.png',
                              width: 36.0, height: 36.0),
                          new Image.asset('images/bus_marker.png',
                              width: 36.0, height: 36.0),
                          new Image.asset('images/sports_marker.png',
                              width: 36.0, height: 36.0)
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Parking Garages', style: mapKeyText),
                        Text('Municipal Bus', style: mapKeyText),
                        Text('Sports Facilities', style: mapKeyText),
                      ],
                    ),
                  ],
                ))),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(221, 2, 18, 200),
          foregroundColor: Colors.white,
          // when pressed, moves camera back to inital camera position
          onPressed: () => _googleMapController.animateCamera(
            CameraUpdate.newCameraPosition(_initialCameraPosition),
          ),
          child: const Icon(Icons.center_focus_strong),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked);
  }

  addMarkers() async {
    BitmapDescriptor schoolMarkerIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(), 'images/school_marker.png');

    BitmapDescriptor parkingMarkerIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(), 'images/parking_marker.png');

    BitmapDescriptor sportsMarkerIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(), 'images/sports_marker.png');

    BitmapDescriptor shuttleMarkerIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(), 'images/shuttle_marker.png');

    BitmapDescriptor diningMarkerIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(), 'images/dining_marker.png');

    BitmapDescriptor busMarkerIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(), 'images/bus_marker.png');

    for (var m in SchoolMarker.schoolMarkers) {
      markers.add(Marker(
        markerId: MarkerId(m.markerId),
        position: m.position,
        infoWindow: InfoWindow(
          title: m.infoWindow,
        ),
        icon: schoolMarkerIcon,
      ));
    }

    ;
    for (var m in ParkingMarker.parkingMarkers) {
      markers.add(Marker(
        markerId: MarkerId(m.markerId),
        position: m.position,
        infoWindow: InfoWindow(
          title: m.infoWindow,
        ),
        icon: parkingMarkerIcon,
      ));
    }
    ;

    for (var m in ShuttleMarker.shuttleMarkers) {
      markers.add(Marker(
        markerId: MarkerId(m.markerId),
        position: m.position,
        infoWindow: InfoWindow(
          title: "Shuttle Bus",
        ),
        icon: shuttleMarkerIcon,
      ));
    }

    ;

    for (var m in BusMarker.busMarkers) {
      markers.add(Marker(
        markerId: MarkerId(m.markerId),
        position: m.position,
        infoWindow: InfoWindow(
          title: "Municipal Bus",
        ),
        icon: busMarkerIcon,
      ));
    }

    ;

    for (var m in SportsMarker.sportsMarkers) {
      markers.add(Marker(
        markerId: MarkerId(m.markerId),
        position: m.position,
        infoWindow: m.infoWindow,
        icon: sportsMarkerIcon,
      ));
    }
    ;

    for (var m in DiningMarker.diningMarkers) {
      markers.add(Marker(
        markerId: MarkerId(m.markerId),
        position: m.position,
        infoWindow: InfoWindow(title: m.infoWindow),
        icon: diningMarkerIcon,
      ));
    }
    ;
  }
}
