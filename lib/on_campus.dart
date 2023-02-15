class OffCampus {
  final String storeName;
  final String address;
  final String hours;

  const OffCampus({required this.storeName, required this.address, required this.hours});
}

const kStore = <OffCampus>[
    OffCampus(
      storeName: 'Connecticut Dining Hall',
      address:'Connecticut Hall',
      hours: 'Monday-Friday: 7:30AM-9:00PM \n Saturday-Sunday: 10:00AM-9:00PM'
    ),
    OffCampus(
      storeName: 'Adanti Student Center Food Court',
      address:'Michael J. Adanti Student CenterT',
      hours: 'Monday-Thursday: 11:00AM-6:30PM \n Friday: 11:00AM-2:30PM \n Saturday-Sunday: Closed'
    ),
    OffCampus(
      storeName: 'Bagel Wagon',
      address:'295 Blake Street, New Haven, CT',
      hours: 'Monday-Thursday: 11:00AM-6:30PM \n Friday: 7:30AM-2:30PM \n Saturday-Sunday: Closed'
    ),
    OffCampus(
      storeName: 'Owl Perch',
      address:'Buley Library',
      hours: 'Monday-Thursday: 7:30AM-6:30PM \n Friday-Sunday: Closed '
    ),
    OffCampus(
      storeName: "Roberta's Convenience Store",
      address:'North Campus Hall',
      hours: 'Monday-Thursday, Sunday: 3:00PM-10:00PM \n Friday-Saturday: Closed '
    )
     
  ];
