import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapMarker {
  final MarkerId markerId;
  final LatLng position;
  final String infoWindow;

  const MapMarker(
      {required this.markerId,
      required this.position,
      required this.infoWindow});

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

// markers for phones
  static const phoneMarkers = <MapMarker>[
    MapMarker(
        markerId: MarkerId('p1'),
        position: LatLng(41.33389, -72.95069),
        infoWindow: 'Emergency Phone'),
  ];
}
