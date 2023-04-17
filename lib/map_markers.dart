// this file holds all map markers for the campus map

import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapMarker {
  final MarkerId markerId;
  final LatLng position;
  final String infoWindow;

  const MapMarker(
      {required this.markerId,
      required this.position,
      required this.infoWindow});

// this function returns the full name of location that is searched
  static String? getMarker(String name) {
    for (MapMarker marker in schoolMarkers) {
      if (marker.infoWindow.contains(name)) {
        return marker.infoWindow;
      }
    }
    for (MapMarker marker in parkingMarkers) {
      if (marker.infoWindow.contains(name)) {
        return marker.infoWindow;
      }
    }
    for (MapMarker marker in sportsMarkers) {
      if (marker.infoWindow.contains(name)) {
        return marker.infoWindow;
      }
    }
    for (MapMarker marker in diningMarkers) {
      if (marker.infoWindow.contains(name)) {
        return marker.infoWindow;
      }
    }
    for (MapMarker marker in hallMarkers) {
      if (marker.infoWindow.contains(name)) {
        return marker.infoWindow;
      }
    }
    return null;
  }

// markers for academic buildings
  static const schoolMarkers = <MapMarker>[
    MapMarker(
        markerId: MarkerId('buley'),
        position: LatLng(41.33305, -72.94781),
        infoWindow: 'Buley Library'),
    MapMarker(
        markerId: MarkerId('jennings'),
        position: LatLng(41.33419, -72.94519),
        infoWindow: 'Jennings Hall'),
    MapMarker(
        markerId: MarkerId('morrill'),
        position: LatLng(41.33372, -72.94585),
        infoWindow: 'Morrill Hall'),
    MapMarker(
        markerId: MarkerId('engleman'),
        position: LatLng(41.33263, -72.94656),
        infoWindow: 'Engleman Hall'),
    MapMarker(
        markerId: MarkerId('temp'),
        position: LatLng(41.33176, -72.94506),
        infoWindow: 'Temporary Building #8'),
    MapMarker(
        markerId: MarkerId('school of business'),
        position: LatLng(41.33161, -72.94553),
        infoWindow: 'School of Business'),
    MapMarker(
        markerId: MarkerId('lyman'),
        position: LatLng(41.33151, -72.94683),
        infoWindow: 'Lyman Center'),
    MapMarker(
        markerId: MarkerId('earl'),
        position: LatLng(41.33196, -72.94803),
        infoWindow: 'Earl Hall'),
    MapMarker(
        markerId: MarkerId('science building'),
        position: LatLng(41.33477, -72.94562),
        infoWindow: 'Academic Science and Laboratory Building'),
    MapMarker(
        markerId: MarkerId('nursing building'),
        position: LatLng(41.33592, -72.94198),
        infoWindow: 'Nursing Building'),
    MapMarker(
        markerId: MarkerId('facilities'),
        position: LatLng(41.33647, -72.94196),
        infoWindow: 'Facilities Operations Building'),
    MapMarker(
        markerId: MarkerId('wintergreen building'),
        position: LatLng(41.33462, -72.95085),
        infoWindow: 'Wintergreen Building'),
    MapMarker(
        markerId: MarkerId('health human services'),
        position: LatLng(41.33513, -72.94478),
        infoWindow: 'Health and Human Services Building'),
    MapMarker(
        markerId: MarkerId('ethmic heritage'),
        position: LatLng(41.33025, -72.95085),
        infoWindow: 'Ethnic Heritage Center'),
  ];

// markers for parking garages
  static const parkingMarkers = <MapMarker>[
    MapMarker(
        markerId: MarkerId('fitch street garage'),
        position: LatLng(41.33573, -72.94296),
        infoWindow: 'Fitch Street Garage'),
    MapMarker(
        markerId: MarkerId('west campus garage'),
        position: LatLng(41.33312, -72.95375),
        infoWindow: 'West Campus Garage'),
    MapMarker(
        markerId: MarkerId('wintergreen garage'),
        position: LatLng(41.33561, -72.95307),
        infoWindow: 'Wintergreen Garage'),
  ];

// markers for Shuttle Buss
  static const shuttleMarkers = <MapMarker>[
    MapMarker(
        markerId: MarkerId('s1'),
        position: LatLng(41.33487, -72.95224),
        infoWindow: 'Shuttle Bus'),
    MapMarker(
        markerId: MarkerId('s2'),
        position: LatLng(41.33345, -72.95326),
        infoWindow: 'Shuttle Bus'),
    MapMarker(
        markerId: MarkerId('s3'),
        position: LatLng(41.33411, -72.94646),
        infoWindow: 'Shuttle Bus'),
    MapMarker(
        markerId: MarkerId('s4'),
        position: LatLng(41.33148, -72.95392),
        infoWindow: 'Shuttle Bus'),
    MapMarker(
        markerId: MarkerId('s5'),
        position: LatLng(41.33003, -72.95339),
        infoWindow: 'Shuttle Bus'),
    MapMarker(
        markerId: MarkerId('s6'),
        position: LatLng(41.33130, -72.94555),
        infoWindow: 'Shuttle Bus'),
    MapMarker(
        markerId: MarkerId('s7'),
        position: LatLng(41.33516, -72.94328),
        infoWindow: 'Shuttle Bus'),
    MapMarker(
        markerId: MarkerId('s8'),
        position: LatLng(41.33581, -72.94230),
        infoWindow: 'Shuttle Bus'),
    MapMarker(
        markerId: MarkerId('s9'),
        position: LatLng(41.33718, -72.94690),
        infoWindow: 'Shuttle Bus'),
  ];

// markers for bus stops
  static const busMarkers = <MapMarker>[
    MapMarker(
        markerId: MarkerId('b1'),
        position: LatLng(41.33213, -72.94930),
        infoWindow: 'Municipal Bus'),
    MapMarker(
        markerId: MarkerId('b2'),
        position: LatLng(41.33241, -72.94950),
        infoWindow: 'Municipal Bus'),
    MapMarker(
        markerId: MarkerId('b3'),
        position: LatLng(
          41.33430,
          -72.95209,
        ),
        infoWindow: 'Municipal Bus')
  ];

// markers for sports facilities
  static const sportsMarkers = <MapMarker>[
    MapMarker(
      markerId: MarkerId('jess dow field'),
      position: LatLng(41.33661, -72.95001),
      infoWindow: 'Jess Dow Field',
    ),
    MapMarker(
        markerId: MarkerId('pelz field'),
        position: LatLng(41.33417, -72.94329),
        infoWindow: 'Pelz Field'),
    MapMarker(
        markerId: MarkerId('ballpark'),
        position: LatLng(41.33259, -72.94322),
        infoWindow: 'The Ballpark at SCSU'),
    MapMarker(
        markerId: MarkerId('field house'),
        position: LatLng(41.33539, -72.95135),
        infoWindow: 'Moore Field House'),
    MapMarker(
        markerId: MarkerId('pelz gym'),
        position: LatLng(41.33502, -72.94392),
        infoWindow: 'Pelz Gymnasium'),
  ];

// markers for dining spots
  static const diningMarkers = <MapMarker>[
    MapMarker(
        markerId: MarkerId('conn hall'),
        position: LatLng(41.33256, -72.95024),
        infoWindow: 'Connecticut Hall'),
    MapMarker(
        markerId: MarkerId('adanti'),
        position: LatLng(41.33182, -72.94882),
        infoWindow: 'Adanti Student Center'),
  ];

// markers for residence halls
  static const hallMarkers = <MapMarker>[
    MapMarker(
        markerId: MarkerId('wc residence'),
        position: LatLng(41.33456, -72.95330),
        infoWindow: 'West Campus Residence Complex'),
    MapMarker(
        markerId: MarkerId('neff'),
        position: LatLng(41.33390, -72.95374),
        infoWindow: 'Neff Hall'),
    MapMarker(
        markerId: MarkerId('hickerson'),
        position: LatLng(41.33390, -72.95312),
        infoWindow: 'Hickerson Hall'),
    MapMarker(
        markerId: MarkerId('chase hall'),
        position: LatLng(41.33322, -72.95269),
        infoWindow: 'Chase Hall'),
    MapMarker(
        markerId: MarkerId('wilkinson hall'),
        position: LatLng(41.33267, -72.95265),
        infoWindow: 'Chase Hall'),
    MapMarker(
        markerId: MarkerId('farnham hall'),
        position: LatLng(41.33254, -72.95189),
        infoWindow: 'Farnham Hall'),
    MapMarker(
        markerId: MarkerId('brownell hall'),
        position: LatLng(41.33165, -72.95376),
        infoWindow: 'Brownell Hall'),
    MapMarker(
        markerId: MarkerId('nc residence'),
        position: LatLng(41.33805, -72.94734),
        infoWindow: 'North Campus Residence Complex'),
    MapMarker(
        markerId: MarkerId('schwartz hall'),
        position: LatLng(41.33144, -72.95015),
        infoWindow: 'Schwartz Hall'),
  ];

// markers for residence halls
  static const phoneMarkers = <MapMarker>[
    MapMarker(
        markerId: MarkerId('p1'),
        position: LatLng(41.33389, -72.95069),
        infoWindow: 'Emergency Phone'),
    MapMarker(
        markerId: MarkerId('p2'),
        position: LatLng(41.33539, -72.94993),
        infoWindow: 'Emergency Phone'),
    MapMarker(
        markerId: MarkerId('p3'),
        position: LatLng(41.33618, -72.94802),
        infoWindow: 'Emergency Phone'),
    MapMarker(
        markerId: MarkerId('p4'),
        position: LatLng(41.33685, -72.94845),
        infoWindow: 'Emergency Phone'),
    MapMarker(
        markerId: MarkerId('p5'),
        position: LatLng(41.33736, -72.94763),
        infoWindow: 'Emergency Phone'),
    MapMarker(
        markerId: MarkerId('p6'),
        position: LatLng(41.33780, -72.94764),
        infoWindow: 'Emergency Phone'),
    MapMarker(
        markerId: MarkerId('p7'),
        position: LatLng(41.33774, -72.94711),
        infoWindow: 'Emergency Phone'),
    MapMarker(
        markerId: MarkerId('p8'),
        position: LatLng(41.33827, -72.94700),
        infoWindow: 'Emergency Phone'),
    MapMarker(
        markerId: MarkerId('p9'),
        position: LatLng(41.33842, -72.94783),
        infoWindow: 'Emergency Phone'),
    MapMarker(
        markerId: MarkerId('p10'),
        position: LatLng(41.33877, -72.94815),
        infoWindow: 'Emergency Phone'),
    MapMarker(
        markerId: MarkerId('p11'),
        position: LatLng(41.33540, -72.95201),
        infoWindow: 'Emergency Phone'),
    MapMarker(
        markerId: MarkerId('p12'),
        position: LatLng(41.33601, -72.95302),
        infoWindow: 'Emergency Phone'),
    MapMarker(
        markerId: MarkerId('p13'),
        position: LatLng(41.33547, -72.95431),
        infoWindow: 'Emergency Phone'),
    MapMarker(
        markerId: MarkerId('p14'),
        position: LatLng(41.33402, -72.95369),
        infoWindow: 'Emergency Phone'),
    MapMarker(
        markerId: MarkerId('p15'),
        position: LatLng(41.33348, -72.95315),
        infoWindow: 'Emergency Phone'),
    MapMarker(
        markerId: MarkerId('p16'),
        position: LatLng(41.33290, -72.95358),
        infoWindow: 'Emergency Phone'),
    MapMarker(
        markerId: MarkerId('p17'),
        position: LatLng(41.33337, -72.95275),
        infoWindow: 'Emergency Phone'),
    MapMarker(
        markerId: MarkerId('p18'),
        position: LatLng(41.33267, -72.95207),
        infoWindow: 'Emergency Phone'),
    MapMarker(
        markerId: MarkerId('p19'),
        position: LatLng(41.33258, -72.95286),
        infoWindow: 'Emergency Phone'),
    MapMarker(
        markerId: MarkerId('p20'),
        position: LatLng(41.33104, -72.95333),
        infoWindow: 'Emergency Phone'),
    MapMarker(
        markerId: MarkerId('p21'),
        position: LatLng(41.33148, -72.95404),
        infoWindow: 'Emergency Phone'),
    MapMarker(
        markerId: MarkerId('p22'),
        position: LatLng(41.32999, -72.95076),
        infoWindow: 'Emergency Phone'),
    MapMarker(
        markerId: MarkerId('p23'),
        position: LatLng(41.32973, -72.95345),
        infoWindow: 'Emergency Phone'),
  ];
}
