// ignore_for_file: import_of_legacy_library_into_null_safe, prefer_const_constructors
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'styles.dart';
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
  // the default info text for all markers
  final _snippet = "Tap here to get directions";

  @override
  void initState() {
    super.initState();
  }

  // sets all filter checkboxes to initially checked off
  bool checkedAcademic = true;
  bool checkedShuttle = true;
  bool checkedDining = true;
  bool checkedParking = true;
  bool checkedBus = true;
  bool checkedSports = true;
  bool checkedHall = true;
  bool checkedPhones = true;

  late BuildContext mainContext;

  final TextEditingController searchController = TextEditingController();
  List<String> listOfMarkers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: ThemeText.mainColor,
            title: const Text('Campus Map', style: ThemeText.otherAppBars),
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  bool searchSubmitted = false;
                  List<String> searchedMarkers = [];
                  mainContext = context;
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return FocusScope(
                          autofocus: true,
                          child: Container(
                            height: 300.0,
                            child: Column(
                              children: [
                                TextField(
                                  style: GoogleFonts.lato(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                  controller: searchController,
                                  onSubmitted: (value) {
                                    // Update the searched markers list based on the search query
                                    setState(() {
                                      searchSubmitted = true;
                                      searchedMarkers = listOfMarkers
                                          .where((name) => name
                                              .toLowerCase()
                                              .contains(value.toLowerCase()))
                                          .toList();
                                    });
                                  },
                                  decoration: InputDecoration(
                                    hintText: 'Enter name of location',
                                    hintStyle: GoogleFonts.lato(
                                      color: Colors.black,
                                      fontSize: 17,
                                    ),
                                    prefixIcon: Icon(
                                      Icons.search,
                                      color: ThemeText.mainColor,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: (searchedMarkers.isEmpty &&
                                          searchSubmitted)
                                      ? Center(
                                          child: Text("No results found.",
                                              style: GoogleFonts.lato(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600)),
                                        )
                                      : GestureDetector(
                                          onTap: (() =>
                                              Navigator.of(context).pop()),
                                          child: ListView.builder(
                                            itemCount: searchedMarkers.length,
                                            itemBuilder: (context, index) {
                                              return ListTile(
                                                  title: Text(
                                                      searchedMarkers[index],
                                                      style: GoogleFonts.lato(
                                                          color: Colors.black,
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w600)),
                                                  onTap: () {
                                                    // gets the full name of the location
                                                    String? fullMarkerName =
                                                        MapMarker.getMarker(
                                                            searchedMarkers[
                                                                index]);
                                                    // gets the marker object of the selected marker
                                                    Marker? selectedMarker =
                                                        findMarker(
                                                            fullMarkerName);
                                                    if (selectedMarker !=
                                                        null) {
                                                      // shows info window for the marker
                                                      _googleMapController
                                                          .showMarkerInfoWindow(
                                                              selectedMarker
                                                                  .markerId);
                                                      // hovers camera over the marker
                                                      _googleMapController
                                                          .animateCamera(
                                                        CameraUpdate
                                                            .newCameraPosition(
                                                          CameraPosition(
                                                              target:
                                                                  selectedMarker
                                                                      .position,
                                                              zoom: 18.0),
                                                        ),
                                                      );
                                                      Navigator.of(mainContext)
                                                          .pop();
                                                    }
                                                  });
                                            },
                                          ),
                                        ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }).whenComplete(() {
                    FocusScope.of(context).unfocus();
                  });
                },
              ),
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
            width: 290,
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
                        const Text(" "),
                        Text('Academic Buildings',
                            style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.5)),
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
                        const Text(" "),
                        Text('Shuttle Bus Stops',
                            style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.5)),
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
                        const Text(" "),
                        Text('Food & Dining',
                            style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.5)),
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
                        const Text(" "),
                        Text('Parking Garages',
                            style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.5)),
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
                        const Text(" "),
                        Text('Municipal Bus Stops',
                            style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.5)),
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
                        const Text(" "),
                        Text('Sports Facilities',
                            style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.5)),
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
                        const Text(" "),
                        Text('Residance Halls',
                            style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.5)),
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
                        const Text(" "),
                        Text('Emergency Phones',
                            style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.5)),
                      ],
                    ),
                    Row(
                      children: const [Text(" ")],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(" "),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              textStyle: ThemeText.mainButtonText,
                              fixedSize: const Size(125, 40),
                              shadowColor: ThemeText.mainColor,
                              elevation: 5.0,
                              backgroundColor: ThemeText.mainColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25))),
                          onPressed: () {
                            setState(() {
                              checkAllMarkers();
                            });
                          },
                          child: const Text("Check All"),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              textStyle: ThemeText.mainButtonText,
                              fixedSize: const Size(125, 40),
                              shadowColor: ThemeText.mainColor,
                              elevation: 5.0,
                              backgroundColor: ThemeText.mainColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25))),
                          onPressed: () {
                            setState(() {
                              uncheckAllMarkers();
                            });
                          },
                          child: const Text("Uncheck All"),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(" "),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  textStyle: ThemeText.mainButtonText,
                                  fixedSize: const Size(110, 50),
                                  shadowColor: ThemeText.mainColor,
                                  elevation: 5.0,
                                  backgroundColor: ThemeText.mainColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25))),
                              onPressed: () {
                                setState(() {
                                  filterMarkers();
                                  Navigator.pop(context);
                                });
                              },
                              child: const Text("Apply"),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ))),
        body: GoogleMap(
          markers: _markers,
          initialCameraPosition: _initialCameraPosition,
          zoomGesturesEnabled: true,
          mapToolbarEnabled: false,
          mapType: _currentMapType,
          zoomControlsEnabled: true,
          // bounds the scope of the map to stay within area of SCSU
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

  // adds all the map markers to the map
  addAllMarkers() {
    addSchoolMarkers();
    addParkingMarkers();
    addSportsMarkers();
    addShuttleMarkers();
    addBusMarkers();
    addDiningMarkers();
    addHallMarkers();
    addPhoneMarkers();
    createList();
  }

// goes through all marker objects and creates a list of strings
// with just the name of the location
  void createList() {
    for (var m in MapMarker.schoolMarkers) {
      listOfMarkers.add(m.infoWindow.toString());
    }
    for (var m in MapMarker.parkingMarkers) {
      listOfMarkers.add(m.infoWindow.toString());
    }
    for (var m in MapMarker.sportsMarkers) {
      listOfMarkers.add(m.infoWindow.toString());
    }
    for (var m in MapMarker.diningMarkers) {
      listOfMarkers.add(m.infoWindow.toString());
    }
    for (var m in MapMarker.hallMarkers) {
      listOfMarkers.add(m.infoWindow.toString());
    }
  }

// returns the marker objects of the tapped search result
  Marker? findMarker(String? name) {
    for (Marker m in _markers) {
      if (m.infoWindow.title == name) {
        return m;
      }
    }
    return null; // If no marker with the given name is found
  }

  // when map marker is pressed, redirects user to google maps with coordinates
  getDirections(var lat, var long) {
    launch('http://www.google.com/maps/place/$lat,$long');
  }

  // adds the academic building markers to map
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

  // adds the parking markers to map
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

  // adds the sport facility markers to map
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

  // adds the shuttle bus markers to map
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

  // adds the dining hall markers to the map
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

  // adds the municipal bus markers to the map
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

  // adds the residance hall markers to the map
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

  // adds the emergency phone markers to the map
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

  // when check all button is pressed, sets all checkboxes to checked
  checkAllMarkers() {
    checkedAcademic = true;
    checkedShuttle = true;
    checkedDining = true;
    checkedParking = true;
    checkedBus = true;
    checkedSports = true;
    checkedHall = true;
    checkedPhones = true;
  }

  // when uncheck all button is pressed, sets all checkboxes to checked
  uncheckAllMarkers() {
    checkedAcademic = false;
    checkedShuttle = false;
    checkedDining = false;
    checkedParking = false;
    checkedBus = false;
    checkedSports = false;
    checkedHall = false;
    checkedPhones = false;
  }

  // when apply filters button is pressed, removes all markers and
  // checks to see which checkboxes are checked, then adds the markers accordingly
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

  void onMarkerTapped(Marker marker) async {
    // Get the position of the tapped marker
    LatLng tappedMarkerPosition = marker.position;
    // Animate the camera to focus on the tapped marker
    await _googleMapController
        .animateCamera(CameraUpdate.newLatLng(tappedMarkerPosition));
    // Explicitly show the info window for the tapped marker
    await _googleMapController.showMarkerInfoWindow(marker.markerId);
  }
}
