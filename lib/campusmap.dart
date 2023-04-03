// ignore: import_of_legacy_library_into_null_safe
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import './styles.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'map_markers.dart';

class CampusMap extends StatefulWidget {
  const CampusMap({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<CampusMap> {
  set markers(List<Marker> markers) {}

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

  Set<Marker> _markers = {};

  final _snippet = "Tap here to get directions";

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
  bool checkedHall = true;
  bool checkedPhones = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: ThemeText.mainColor,
            title: const Text('Campus Map', style: ThemeText.otherAppBars),
            actions: [
              Builder(builder: (context) {
                return TextButton(
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                    style:
                        TextButton.styleFrom(textStyle: ThemeText.otherAppBars),
                    child: const Text('Filter',
                        style: TextStyle(color: Colors.white)));
              })
            ]),
        endDrawer: Drawer(
            width: 260,
            child: Container(
                height: 150,
                color: Colors.white,
                padding: const EdgeInsets.fromLTRB(2, 110, 20, 0),
                child: Column(
                  children: [
                    const Text("Filter By:", style: ThemeText.filterHeader),
                    const Text(''),
                    Row(
                      children: [
                        Checkbox(
                            activeColor: ThemeText.mainColor,
                            value: checkedAcademic,
                            onChanged: (newValue) {
                              setState(() {
                                checkedAcademic = newValue!;
                              });
                            }),
                        Image.asset('images/school_marker.png',
                            width: 36.0, height: 36.0),
                        const Text('Academic Buildings',
                            style: ThemeText.mapKeyText),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            activeColor: ThemeText.mainColor,
                            value: checkedShuttle,
                            onChanged: (newValue) {
                              setState(() {
                                checkedShuttle = newValue!;
                              });
                            }),
                        Image.asset('images/shuttle_marker.png',
                            width: 36.0, height: 36.0),
                        const Text('Shuttle Bus Stops',
                            style: ThemeText.mapKeyText),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            activeColor: ThemeText.mainColor,
                            value: checkedDining,
                            onChanged: (newValue) {
                              setState(() {
                                checkedDining = newValue!;
                              });
                            }),
                        Image.asset('images/dining_marker.png',
                            width: 36.0, height: 36.0),
                        const Text('Food & Dining',
                            style: ThemeText.mapKeyText),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            activeColor: ThemeText.mainColor,
                            value: checkedParking,
                            onChanged: (newValue) {
                              setState(() {
                                checkedParking = newValue!;
                              });
                            }),
                        Image.asset('images/parking_marker.png',
                            width: 36.0, height: 36.0),
                        const Text('Parking Garages',
                            style: ThemeText.mapKeyText),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            activeColor: ThemeText.mainColor,
                            value: checkedBus,
                            onChanged: (newValue) {
                              setState(() {
                                checkedBus = newValue!;
                              });
                            }),
                        Image.asset('images/bus_marker.png',
                            width: 36.0, height: 36.0),
                        const Text('Municipal Bus Stops',
                            style: ThemeText.mapKeyText),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            activeColor: ThemeText.mainColor,
                            value: checkedSports,
                            onChanged: (newValue) {
                              setState(() {
                                checkedSports = newValue!;
                              });
                            }),
                        Image.asset('images/sports_marker.png',
                            width: 36.0, height: 36.0),
                        const Text('Sports Facilities',
                            style: ThemeText.mapKeyText),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            activeColor: ThemeText.mainColor,
                            value: checkedHall,
                            onChanged: (newValue) {
                              setState(() {
                                checkedHall = newValue!;
                              });
                            }),
                        Image.asset('images/dorm_marker.png',
                            width: 36.0, height: 36.0),
                        const Text('Residance Halls',
                            style: ThemeText.mapKeyText),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            activeColor: ThemeText.mainColor,
                            value: checkedPhones,
                            onChanged: (newValue) {
                              setState(() {
                                checkedPhones = newValue!;
                              });
                            }),
                        Image.asset('images/phone_marker.png',
                            width: 36.0, height: 36.0),
                        const Text('Emergency Phones',
                            style: ThemeText.mapKeyText),
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
                              shadowColor: ThemeText.mainColor,
                              elevation: 5.0,
                              backgroundColor: ThemeText.mainColor,
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
                              shadowColor: ThemeText.mainColor,
                              elevation: 5.0,
                              backgroundColor: ThemeText.mainColor,
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
          markers: _markers,
          initialCameraPosition: _initialCameraPosition,
          zoomGesturesEnabled: true,
          mapToolbarEnabled: false,
          mapType: _currentMapType,
          zoomControlsEnabled: true,
          cameraTargetBounds: CameraTargetBounds(LatLngBounds(
              northeast: const LatLng(41.33800, -72.92543),
              southwest: const LatLng(41.32664, -72.97003))),
          onMapCreated: (controller) {
            setState(() {
              addAllMarkers();
              _googleMapController = controller;
            });
          },
        ),
        bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            child: Container(
                height: 215,
                color: Colors.white,
                padding: const EdgeInsets.all(15.0),
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
                            width: 36.0, height: 36.0),
                        Image.asset('images/dorm_marker.png',
                            width: 36.0, height: 36.0)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Academic Building',
                            style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.5)),
                        Text('Shuttle Bus',
                            style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.5)),
                        Text('Food & Dining',
                            style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.5)),
                        Text('Residance Hall',
                            style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.5)),
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
                              width: 36.0, height: 36.0),
                          Image.asset('images/phone_marker.png',
                              width: 36.0, height: 36.0)
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Parking Garage',
                            style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.5)),
                        Text('Municipal Bus',
                            style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.5)),
                        Text('Sports Facility',
                            style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.5)),
                        Text('Emergency Phone',
                            style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.5)),
                      ],
                    ),
                  ],
                ))),
        floatingActionButton: FloatingActionButton(
          backgroundColor: ThemeText.mainColor,
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
    addHallMarkers();
    addPhoneMarkers();
  }

  getDirections(var lat, var long) {
    launch('http://www.google.com/maps/place/$lat,$long');
  }

  addSchoolMarkers() async {
    BitmapDescriptor schoolMarkerIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(), 'images/school_marker.png');
    for (var m in MapMarker.schoolMarkers) {
      _markers.add(Marker(
        markerId: m.markerId,
        position: m.position,
        infoWindow: InfoWindow(
            title: m.infoWindow,
            snippet: _snippet,
            onTap: () {
              getDirections(m.position.latitude, m.position.longitude);
            }),
        icon: schoolMarkerIcon,
      ));
    }
  }

  addParkingMarkers() async {
    BitmapDescriptor parkingMarkerIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(), 'images/parking_marker.png');

    for (var m in MapMarker.parkingMarkers) {
      _markers.add(Marker(
        markerId: m.markerId,
        position: m.position,
        infoWindow: InfoWindow(
            title: m.infoWindow,
            snippet: _snippet,
            onTap: () {
              getDirections(m.position.latitude, m.position.longitude);
            }),
        icon: parkingMarkerIcon,
      ));
    }
  }

  addSportsMarkers() async {
    BitmapDescriptor sportsMarkerIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(), 'images/sports_marker.png');
    for (var m in MapMarker.sportsMarkers) {
      _markers.add(Marker(
        markerId: m.markerId,
        position: m.position,
        infoWindow: InfoWindow(
            title: m.infoWindow,
            snippet: _snippet,
            onTap: () {
              getDirections(m.position.latitude, m.position.longitude);
            }),
        icon: sportsMarkerIcon,
      ));
    }
  }

  addShuttleMarkers() async {
    BitmapDescriptor shuttleMarkerIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(), 'images/shuttle_marker.png');

    for (var m in MapMarker.shuttleMarkers) {
      _markers.add(Marker(
        markerId: m.markerId,
        position: m.position,
        infoWindow: InfoWindow(
            title: m.infoWindow,
            snippet: _snippet,
            onTap: () {
              getDirections(m.position.latitude, m.position.longitude);
            }),
        icon: shuttleMarkerIcon,
      ));
    }
  }

  addDiningMarkers() async {
    BitmapDescriptor diningMarkerIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(), 'images/dining_marker.png');

    for (var m in MapMarker.diningMarkers) {
      _markers.add(Marker(
        markerId: m.markerId,
        position: m.position,
        infoWindow: InfoWindow(
            title: m.infoWindow,
            snippet: _snippet,
            onTap: () {
              getDirections(m.position.latitude, m.position.longitude);
            }),
        icon: diningMarkerIcon,
      ));
    }
  }

  addBusMarkers() async {
    BitmapDescriptor busMarkerIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(), 'images/bus_marker.png');

    for (var m in MapMarker.busMarkers) {
      _markers.add(Marker(
        markerId: m.markerId,
        position: m.position,
        infoWindow: InfoWindow(
            title: m.infoWindow,
            snippet: _snippet,
            onTap: () {
              getDirections(m.position.latitude, m.position.longitude);
            }),
        icon: busMarkerIcon,
      ));
    }
  }

  addHallMarkers() async {
    BitmapDescriptor hallMarkerIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(), 'images/dorm_marker.png');

    for (var m in MapMarker.hallMarkers) {
      _markers.add(Marker(
        markerId: m.markerId,
        position: m.position,
        infoWindow: InfoWindow(
            title: m.infoWindow,
            snippet: _snippet,
            onTap: () {
              getDirections(m.position.latitude, m.position.longitude);
            }),
        icon: hallMarkerIcon,
      ));
    }
  }

  addPhoneMarkers() async {
    BitmapDescriptor phoneMarkerIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(), 'images/phone_marker.png');

    for (var m in MapMarker.phoneMarkers) {
      _markers.add(Marker(
        markerId: m.markerId,
        position: m.position,
        infoWindow: InfoWindow(
            title: m.infoWindow,
            snippet: _snippet,
            onTap: () {
              getDirections(m.position.latitude, m.position.longitude);
            }),
        icon: phoneMarkerIcon,
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
    checkedHall = true;
    checkedPhones = true;
  }

  filterMarkers() {
    setState(() {
      _markers = {};
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
    if (checkedHall == true) {
      addHallMarkers();
    }
    if (checkedPhones == true) {
      addPhoneMarkers();
    }
  }
}
