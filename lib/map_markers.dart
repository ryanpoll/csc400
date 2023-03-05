import 'package:flutter/scheduler.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapMarker {
  final MarkerId markerId;
  final LatLng position;
  final InfoWindow infoWindow;

  const MapMarker(
      {required this.markerId,
      required this.position,
      required this.infoWindow});

// markers for academic buildings
  static const schoolMarkers = <MapMarker>[
    MapMarker(
        markerId: MarkerId('buley'),
        position: LatLng(41.33305, -72.94781),
        infoWindow: InfoWindow(title: 'Buley Library')),
    MapMarker(
        markerId: MarkerId('jennings'),
        position: LatLng(41.33419, -72.94519),
        infoWindow: InfoWindow(title: 'Jennings Hall')),
    MapMarker(
        markerId: MarkerId('morrill'),
        position: LatLng(41.33372, -72.94585),
        infoWindow: InfoWindow(title: 'Morrill Hall')),
    MapMarker(
        markerId: MarkerId('engleman'),
        position: LatLng(41.33263, -72.94656),
        infoWindow: InfoWindow(title: 'Engleman Hall')),
    MapMarker(
        markerId: MarkerId('temp'),
        position: LatLng(41.33176, -72.94506),
        infoWindow: InfoWindow(title: 'Temporary Building #8')),
    MapMarker(
        markerId: MarkerId('school of business'),
        position: LatLng(41.33161, -72.94553),
        infoWindow: InfoWindow(title: 'School of Business')),
    MapMarker(
        markerId: MarkerId('lyman'),
        position: LatLng(41.33151, -72.94683),
        infoWindow: InfoWindow(title: 'Lyman Center')),
    MapMarker(
        markerId: MarkerId('earl'),
        position: LatLng(41.33196, -72.94803),
        infoWindow: InfoWindow(title: 'Earl Hall')),
    MapMarker(
        markerId: MarkerId('science building'),
        position: LatLng(41.33477, -72.94562),
        infoWindow:
            InfoWindow(title: 'Academic Science and Laboratory Building')),
    MapMarker(
        markerId: MarkerId('nursing building'),
        position: LatLng(41.33592, -72.94198),
        infoWindow: InfoWindow(title: 'Nursing Building')),
    MapMarker(
        markerId: MarkerId('facilities'),
        position: LatLng(41.33647, -72.94196),
        infoWindow: InfoWindow(title: 'Facilities Operations Building')),
    MapMarker(
        markerId: MarkerId('schwartz hall'),
        position: LatLng(41.33144, -72.95015),
        infoWindow: InfoWindow(title: 'Schwartz Hall')),
    MapMarker(
        markerId: MarkerId('wintergreen building'),
        position: LatLng(41.33462, -72.95085),
        infoWindow: InfoWindow(title: 'Wintergreen Building')),
  ];

// markers for parking garages
  static const parkingMarkers = <MapMarker>[
    MapMarker(
        markerId: MarkerId('fitch street garage'),
        position: LatLng(41.33573, -72.94296),
        infoWindow: InfoWindow(title: 'Fitch Street Garage')),
    MapMarker(
        markerId: MarkerId('west campus garage'),
        position: LatLng(41.33312, -72.95375),
        infoWindow: InfoWindow(title: 'West Campus Garage')),
    MapMarker(
        markerId: MarkerId('wintergreen garage'),
        position: LatLng(41.33561, -72.95307),
        infoWindow: InfoWindow(title: 'Wintergreen Garage')),
  ];

// markers for Shuttle Buss
  static const shuttleMarkers = <MapMarker>[
    MapMarker(
        markerId: MarkerId('s1'),
        position: LatLng(41.33487, -72.95224),
        infoWindow: InfoWindow(title: 'Shuttle Bus')),
    MapMarker(
        markerId: MarkerId('s2'),
        position: LatLng(41.33345, -72.95326),
        infoWindow: InfoWindow(title: 'Shuttle Bus')),
    MapMarker(
        markerId: MarkerId('s3'),
        position: LatLng(41.33411, -72.94646),
        infoWindow: InfoWindow(title: 'Shuttle Bus')),
    MapMarker(
        markerId: MarkerId('s4'),
        position: LatLng(41.33148, -72.95392),
        infoWindow: InfoWindow(title: 'Shuttle Bus')),
    MapMarker(
        markerId: MarkerId('s5'),
        position: LatLng(41.33003, -72.95339),
        infoWindow: InfoWindow(title: 'Shuttle Bus')),
    MapMarker(
        markerId: MarkerId('s6'),
        position: LatLng(41.33130, -72.94555),
        infoWindow: InfoWindow(title: 'Shuttle Bus')),
    MapMarker(
        markerId: MarkerId('s7'),
        position: LatLng(41.33516, -72.94328),
        infoWindow: InfoWindow(title: 'Shuttle Bus')),
    MapMarker(
        markerId: MarkerId('s8'),
        position: LatLng(41.33581, -72.94230),
        infoWindow: InfoWindow(title: 'Shuttle Bus')),
    MapMarker(
        markerId: MarkerId('s9'),
        position: LatLng(41.33718, -72.94690),
        infoWindow: InfoWindow(title: 'Shuttle Bus')),
  ];

// markers for bus stops
  static const busMarkers = <MapMarker>[
    MapMarker(
        markerId: MarkerId('b1'),
        position: LatLng(41.33213, -72.94930),
        infoWindow: InfoWindow(title: 'Municipal Bus')),
    MapMarker(
        markerId: MarkerId('b2'),
        position: LatLng(41.33241, -72.94950),
        infoWindow: InfoWindow(title: 'Municipal Bus')),
    MapMarker(
        markerId: MarkerId('b3'),
        position: LatLng(
          41.33430,
          -72.95209,
        ),
        infoWindow: InfoWindow(title: 'Municipal Bus'))
  ];

// markers for sports facilities
  static const sportsMarkers = <MapMarker>[
    MapMarker(
        markerId: MarkerId('jess dow field'),
        position: LatLng(41.33661, -72.95001),
        infoWindow: InfoWindow(
            title: 'Jess Dow Field',
            snippet: "Football, Soccer, Field Hockey, Lacrosse")),
    MapMarker(
        markerId: MarkerId('pelz field'),
        position: LatLng(41.33417, -72.94329),
        infoWindow: InfoWindow(title: 'Pelz Field', snippet: "Baseball Field")),
    MapMarker(
        markerId: MarkerId('ballpark'),
        position: LatLng(41.33259, -72.94322),
        infoWindow: InfoWindow(
            title: 'The Ballpark at SCSU', snippet: "Baseball Field")),
  ];

// markers for dining spots
  static const diningMarkers = <MapMarker>[
    MapMarker(
        markerId: MarkerId('conn hall'),
        position: LatLng(41.33256, -72.95024),
        infoWindow: InfoWindow(title: 'Connecticut Hall')),
    MapMarker(
        markerId: MarkerId('adanti'),
        position: LatLng(41.33182, -72.94882),
        infoWindow: InfoWindow(title: 'Adanti Student Center')),
  ];
}
