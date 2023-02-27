import 'package:flutter/scheduler.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SchoolMarker {
  final String markerId;
  final LatLng position;
  final String infoWindow;

  const SchoolMarker(
      {required this.markerId,
      required this.position,
      required this.infoWindow});

  static const schoolMarkers = <SchoolMarker>[
    SchoolMarker(
        markerId: 'buley',
        position: LatLng(41.33305, -72.94781),
        infoWindow: 'Buley Library'),
    SchoolMarker(
        markerId: 'jennings',
        position: LatLng(41.33419, -72.94519),
        infoWindow: 'Jennings Hall'),
    SchoolMarker(
        markerId: 'morrill',
        position: LatLng(41.33372, -72.94585),
        infoWindow: 'Morrill Hall'),
    SchoolMarker(
        markerId: 'engleman',
        position: LatLng(41.33263, -72.94656),
        infoWindow: 'Engleman Hall'),
    SchoolMarker(
        markerId: 'temp',
        position: LatLng(41.33176, -72.94506),
        infoWindow: 'Temporary Building #8'),
    SchoolMarker(
        markerId: 'school of business',
        position: LatLng(41.33161, -72.94553),
        infoWindow: 'School of Business'),
    SchoolMarker(
        markerId: 'lyman',
        position: LatLng(41.33151, -72.94683),
        infoWindow: 'Lyman Center'),
    SchoolMarker(
        markerId: 'earl',
        position: LatLng(41.33196, -72.94803),
        infoWindow: 'Earl Hall'),
    SchoolMarker(
        markerId: 'science building',
        position: LatLng(41.33477, -72.94562),
        infoWindow: 'Academic Science and Laboratory Building'),
    SchoolMarker(
        markerId: 'nursing building',
        position: LatLng(41.33592, -72.94198),
        infoWindow: 'Nursing Building'),
    SchoolMarker(
        markerId: 'facilities',
        position: LatLng(41.33647, -72.94196),
        infoWindow: 'Facilities Operations Building'),
    SchoolMarker(
        markerId: 'schwartz hall',
        position: LatLng(41.33144, -72.95015),
        infoWindow: 'Schwartz Hall'),
    SchoolMarker(
        markerId: 'wintergreen building',
        position: LatLng(41.33462, -72.95085),
        infoWindow: 'Wintergreen Building'),
  ];
}

///////////////////////////////////////////////////////////////////////////////////

class ParkingMarker {
  final String markerId;
  final LatLng position;
  final String infoWindow;

  const ParkingMarker(
      {required this.markerId,
      required this.position,
      required this.infoWindow});

  static const parkingMarkers = <ParkingMarker>[
    ParkingMarker(
        markerId: 'fitch street garage',
        position: LatLng(41.33573, -72.94296),
        infoWindow: 'Fitch Street Garage'),
    ParkingMarker(
        markerId: 'west campus garage',
        position: LatLng(41.33312, -72.95375),
        infoWindow: 'West Campus Garage'),
    ParkingMarker(
        markerId: 'wintergreen garage',
        position: LatLng(41.33561, -72.95307),
        infoWindow: 'Wintergreen Garage'),
  ];
}

////////////////////////////////////////////////////////////////////////////////

class ShuttleMarker {
  final String markerId;
  final LatLng position;

  const ShuttleMarker({
    required this.markerId,
    required this.position,
  });

  static const shuttleMarkers = <ShuttleMarker>[
    ShuttleMarker(
      markerId: 's1',
      position: LatLng(41.33487, -72.95224),
    ),
    ShuttleMarker(
      markerId: 's2',
      position: LatLng(41.33345, -72.95326),
    ),
    ShuttleMarker(
      markerId: 's3',
      position: LatLng(41.33411, -72.94646),
    ),
    ShuttleMarker(
      markerId: 's4',
      position: LatLng(41.33148, -72.95392),
    ),
    ShuttleMarker(
      markerId: 's5',
      position: LatLng(41.33003, -72.95339),
    ),
    ShuttleMarker(
      markerId: 's6',
      position: LatLng(41.33130, -72.94555),
    ),
    ShuttleMarker(
      markerId: 's7',
      position: LatLng(41.33516, -72.94328),
    ),
    ShuttleMarker(
      markerId: 's8',
      position: LatLng(41.33581, -72.94230),
    ),
    ShuttleMarker(
      markerId: 's9',
      position: LatLng(41.33718, -72.94690),
    ),
  ];
}

/////////////////////////////////////////////////////////////////////////

class BusMarker {
  final String markerId;
  final LatLng position;

  const BusMarker({
    required this.markerId,
    required this.position,
  });

  static const busMarkers = <BusMarker>[
    BusMarker(
      markerId: 'b1',
      position: LatLng(41.33213, -72.94930),
    ),
    BusMarker(
      markerId: 'b2',
      position: LatLng(41.33241, -72.94950),
    ),
    BusMarker(
      markerId: 'b3',
      position: LatLng(
        41.33430,
        -72.95209,
      ),
    )
  ];
}

/////////////////////////////////////////////////////////////////////////////

class SportsMarker {
  final String markerId;
  final LatLng position;
  final InfoWindow infoWindow;

  const SportsMarker(
      {required this.markerId,
      required this.position,
      required this.infoWindow});

  static const sportsMarkers = <SportsMarker>[
    SportsMarker(
        markerId: 'jess dow field',
        position: LatLng(41.33661, -72.95001),
        infoWindow: InfoWindow(
            title: 'Jess Dow Field',
            snippet: "Football, Soccer, Field Hockey, Lacrosse")),
    SportsMarker(
        markerId: 'pelz field',
        position: LatLng(41.33417, -72.94329),
        infoWindow: InfoWindow(title: 'Pelz Field', snippet: "Baseball Field")),
    SportsMarker(
        markerId: 'ballpark',
        position: LatLng(41.33259, -72.94322),
        infoWindow: InfoWindow(
            title: 'The Ballpark at SCSU', snippet: "Baseball Field")),
  ];
}

//////////////////////////////////////////////////

class DiningMarker {
  final String markerId;
  final LatLng position;
  final String infoWindow;

  const DiningMarker(
      {required this.markerId,
      required this.position,
      required this.infoWindow});

  static const diningMarkers = <DiningMarker>[
    DiningMarker(
        markerId: 'conn hall',
        position: LatLng(41.33256, -72.95024),
        infoWindow: 'Connecticut Hall'),
    DiningMarker(
        markerId: 'adanti',
        position: LatLng(41.33182, -72.94882),
        infoWindow: 'Adanti Student Center'),
  ];
}
