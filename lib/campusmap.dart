import './styles.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'map_markers.dart';

class CampusMap extends StatefulWidget {
  const CampusMap({super.key});

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
  final MapType _currentMapType = MapType.satellite;
  Set<Marker> markers = {};
  @override
  void initState() {
    super.initState();
  }

  bool checkedAcademic = true;
  bool checkedShuttle = true;
  bool checkedDining = true;
  bool checkedParking = true;
  bool checkedBus = true;
  bool checkedSports = true;

  static const TextStyle mapKeyText = TextStyle(
      color: Colors.black,
      fontSize: 15,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.5);

  static const TextStyle filterHeader = TextStyle(
      color: Colors.black,
      fontSize: 24,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(221, 2, 18, 200),
            title: const Text('Campus Map', style: ThemeText.otherAppBars),
            actions: [
              Builder(builder: (context) {
                return TextButton(
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                    style:
                        TextButton.styleFrom(textStyle: ThemeText.otherAppBars),
                    child: const Text('Filter'));
              })
            ]),
        endDrawer: Drawer(
            width: 250,
            child: Container(
                height: 150,
                color: Colors.white,
                padding: const EdgeInsets.fromLTRB(2, 200, 20, 0),
                child: Column(
                  children: [
                    const Text("Filter By:", style: filterHeader),
                    const Text(''),
                    Row(
                      children: [
                        Checkbox(
                            activeColor: const Color.fromARGB(221, 2, 18, 200),
                            value: checkedAcademic,
                            onChanged: (newValue) {
                              setState(() {
                                checkedAcademic = newValue!;
                              });
                            }),
                        Image.asset('images/school_marker.png',
                            width: 36.0, height: 36.0),
                        const Text('Academic Buildings', style: mapKeyText),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            activeColor: const Color.fromARGB(221, 2, 18, 200),
                            value: checkedShuttle,
                            onChanged: (newValue) {
                              setState(() {
                                checkedShuttle = newValue!;
                              });
                            }),
                        Image.asset('images/shuttle_marker.png',
                            width: 36.0, height: 36.0),
                        const Text('Shuttle Bus Stops', style: mapKeyText),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            activeColor: const Color.fromARGB(221, 2, 18, 200),
                            value: checkedDining,
                            onChanged: (newValue) {
                              setState(() {
                                checkedDining = newValue!;
                              });
                            }),
                        Image.asset('images/dining_marker.png',
                            width: 36.0, height: 36.0),
                        const Text('Food & Dining', style: mapKeyText),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            activeColor: const Color.fromARGB(221, 2, 18, 200),
                            value: checkedParking,
                            onChanged: (newValue) {
                              setState(() {
                                checkedParking = newValue!;
                              });
                            }),
                        Image.asset('images/parking_marker.png',
                            width: 36.0, height: 36.0),
                        const Text('Parking Garages', style: mapKeyText),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            activeColor: const Color.fromARGB(221, 2, 18, 200),
                            value: checkedBus,
                            onChanged: (newValue) {
                              setState(() {
                                checkedBus = newValue!;
                              });
                            }),
                        Image.asset('images/bus_marker.png',
                            width: 36.0, height: 36.0),
                        const Text('Municipal Bus', style: mapKeyText),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            activeColor: const Color.fromARGB(221, 2, 18, 200),
                            value: checkedSports,
                            onChanged: (newValue) {
                              setState(() {
                                checkedSports = newValue!;
                              });
                            }),
                        Image.asset('images/sports_marker.png',
                            width: 36.0, height: 36.0),
                        const Text('Sports Facilities', style: mapKeyText),
                      ],
                    ),
                    Row(
                      children: const [Text(" ")],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(" "),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              textStyle: ThemeText.mainButtonText,
                              fixedSize: const Size(100, 40),
                              shadowColor:
                                  const Color.fromARGB(221, 2, 18, 200),
                              elevation: 5.0,
                              backgroundColor:
                                  const Color.fromARGB(221, 2, 18, 200),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25))),
                          onPressed: () {
                            setState(() {
                              filterMarkers();
                            });
                          },
                          child: const Text("Apply"),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              textStyle: ThemeText.mainButtonText,
                              fixedSize: const Size(100, 40),
                              shadowColor:
                                  const Color.fromARGB(221, 2, 18, 200),
                              elevation: 5.0,
                              backgroundColor:
                                  const Color.fromARGB(221, 2, 18, 200),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25))),
                          onPressed: () {
                            setState(() {
                              resetMarkers();
                            });
                          },
                          child: const Text("Reset"),
                        )
                      ],
                    ),
                  ],
                ))),
        body: GoogleMap(
          markers: markers,
          initialCameraPosition: _initialCameraPosition,
          zoomGesturesEnabled: true,
          mapToolbarEnabled: false,
          mapType: _currentMapType,
          zoomControlsEnabled: false,
          cameraTargetBounds: CameraTargetBounds(LatLngBounds(
              northeast: const LatLng(41.33800, -72.92543),
              southwest: const LatLng(41.32664, -72.97003))),
          onMapCreated: (controller) {
            setState(() {
              addAllMarkers();
              //  getCurrentLocation();
              _googleMapController = controller;
            });
          },
        ),
        bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            child: Container(
                height: 150,
                color: Colors.white,
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('images/school_marker.png',
                            width: 36.0, height: 36.0),
                        Image.asset('images/shuttle_marker.png',
                            width: 36.0, height: 36.0),
                        Image.asset('images/dining_marker.png',
                            width: 36.0, height: 36.0)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
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
                          Image.asset('images/parking_marker.png',
                              width: 36.0, height: 36.0),
                          Image.asset('images/bus_marker.png',
                              width: 36.0, height: 36.0),
                          Image.asset('images/sports_marker.png',
                              width: 36.0, height: 36.0)
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Parking Garages', style: mapKeyText),
                        Text('Municipal Bus', style: mapKeyText),
                        Text('Sports Facilities', style: mapKeyText),
                      ],
                    ),
                  ],
                ))),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(221, 2, 18, 200),
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

  addAllMarkers() {
    addSchoolMarkers();
    addParkingMarkers();
    addSportsMarkers();
    addShuttleMarkers();
    addBusMarkers();
    addDiningMarkers();
  }

  addSchoolMarkers() async {
    BitmapDescriptor schoolMarkerIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(), 'images/school_marker.png');
    for (var m in MapMarker.schoolMarkers) {
      markers.add(Marker(
        markerId: m.markerId,
        position: m.position,
        infoWindow: m.infoWindow,
        icon: schoolMarkerIcon,
      ));
    }
  }

  addParkingMarkers() async {
    BitmapDescriptor parkingMarkerIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(), 'images/parking_marker.png');

    for (var m in MapMarker.parkingMarkers) {
      markers.add(Marker(
        markerId: m.markerId,
        position: m.position,
        infoWindow: m.infoWindow,
        icon: parkingMarkerIcon,
      ));
    }
  }

  addSportsMarkers() async {
    BitmapDescriptor sportsMarkerIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(), 'images/sports_marker.png');
    for (var m in MapMarker.sportsMarkers) {
      markers.add(Marker(
        markerId: m.markerId,
        position: m.position,
        infoWindow: m.infoWindow,
        icon: sportsMarkerIcon,
      ));
    }
  }

  addShuttleMarkers() async {
    BitmapDescriptor shuttleMarkerIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(), 'images/shuttle_marker.png');

    for (var m in MapMarker.shuttleMarkers) {
      markers.add(Marker(
        markerId: m.markerId,
        position: m.position,
        infoWindow: m.infoWindow,
        icon: shuttleMarkerIcon,
      ));
    }
  }

  addDiningMarkers() async {
    BitmapDescriptor diningMarkerIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(), 'images/dining_marker.png');

    for (var m in MapMarker.diningMarkers) {
      markers.add(Marker(
        markerId: m.markerId,
        position: m.position,
        infoWindow: m.infoWindow,
        icon: diningMarkerIcon,
      ));
    }
  }

  addBusMarkers() async {
    BitmapDescriptor busMarkerIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(), 'images/bus_marker.png');

    for (var m in MapMarker.busMarkers) {
      markers.add(Marker(
        markerId: m.markerId,
        position: m.position,
        infoWindow: m.infoWindow,
        icon: busMarkerIcon,
      ));
    }
  }

  resetMarkers() {
    checkedAcademic = true;
    checkedShuttle = true;
    checkedDining = true;
    checkedParking = true;
    checkedBus = true;
    checkedSports = true;
  }

  filterMarkers() {
    setState(() {
      markers = {};
    });
    if (checkedAcademic == true) {
      addSchoolMarkers();
    }
    if (checkedBus == true) {
      addBusMarkers();
    }
    if (checkedDining == true) {
      addDiningMarkers();
    }
    if (checkedShuttle == true) {
      addShuttleMarkers();
    }
    if (checkedSports == true) {
      addSportsMarkers();
    }
    if (checkedParking == true) {
      addParkingMarkers();
    }
  }
}
