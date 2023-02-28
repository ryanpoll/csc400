class OnCampus {
  String name;
  String address;
  String websiteUrl;
  String hours;
  String imageUrl;
  String description;

 OnCampus(
      { required this.name,
      required this.address,
      required this.websiteUrl,
      required this.hours,
      required this.imageUrl,
      required this.description});
}


List<OnCampus> storeList = <OnCampus>[
    OnCampus(
      name: 'Connecticut Dining Hall',
      address:'Connecticut Hall',
      websiteUrl: 'https://southernct.sodexomyway.com/dining-near-me/resident-dining',
      imageUrl: 'https://scontent-lga3-1.xx.fbcdn.net/v/t39.30808-6/306571354_391471446532093_4705850862094060843_n.png?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=OCaDR5ecINcAX_Cy05G&_nc_ht=scontent-lga3-1.xx&oh=00_AfBlXXCUg1FGh_QoZHE1xi46ERKw6a5PkBoFi0LgwkhkMQ&oe=63F86226',
      hours: 'Monday-Friday: 7:30AM-9:00PM \n Saturday-Sunday: 10:00AM-9:00PM',
      description:"Connecticut Dining Hall is proud to offer a dining program complete with signature brands and menu selections that include just about every item you can imagine. Just feast your eyes on what we have available! Featuring a wide variety of fresh food designed to satisfy everyone's appetite with food choices to rival your favorite restaurants."
    ),
    OnCampus(
      name: 'Adanti Student Center Food Court',
      address:'Michael J. Adanti Student CenterT',
      hours: 'Monday-Thursday: 11:00AM-6:30PM \n Friday: 11:00AM-2:30PM \n Saturday-Sunday: Closed',
      websiteUrl: 'https://southernct.sodexomyway.com/dining-near-me/adanti_student_center',
      imageUrl: 'https://www.southernct.edu/sites/default/files/2018-08/SCSU_17-AdantiFoodcourtResized-0913.jpg',
      description: "At the Adanti Student Center you will find four retail dining destinations including a full service Dunkin', Tres Habaneros, SubConnection, The Grill, and Bowlful as well as an assortment of beverages, snack and grab and go options. Also located in the Adanti Student Center is our full service Dunkin'. "
    ),
    OnCampus(
      name: 'Bagel Wagon',
      address:'295 Blake Street, New Haven, CT',
      hours: 'Monday-Thursday: 11:00AM-6:30PM \n Friday: 7:30AM-2:30PM \n Saturday-Sunday: Closed',
      websiteUrl: 'https://southernct.sodexomyway.com/dining-near-me/bagel_wagon',
      imageUrl: 'https://content-service.sodexomyway.com/media/coffeebagel_tcm1054-23666.jpg?url=https://southernct.sodexomyway.com/',
      description: "This bagels-and-more location is a prime spot for students, faculty, staff and guests to fuel up with a tasty breakfast or lunch. From the namesake bagels with a variety of sweet and savory cream cheese options, to lunch options, including wraps, soups and vegetarian and vegan dishes, and ‘We Proudly Serve’ Starbucks coffee, this diverse and appealing menu is sure to deliver brain food for Southern’s most powerful minds!"
    ),
    OnCampus(
      name: 'Owl Perch',
      address:'Buley Library',
      hours: 'Monday-Thursday: 7:30AM-6:30PM \n Friday-Sunday: Closed ',
      websiteUrl: 'https://southernct.sodexomyway.com/dining-near-me/owl_perch',
      imageUrl: 'http://crescentmagazine.org/wp-content/uploads/2019/04/pell_020119_owlperch-750x541.jpg',
      description: 'Proudly serving Starbucks coffee, a variety of bottled beverages and snacks as well as our fresh made Simply to Go line of sandwiches, salads, fruit cups and more. Located in the library, Owl Perch is a convenient spot to refuel. '
    ),
    OnCampus(
      name: "Roberta's Convenience Store",
      address:'North Campus Hall',
      hours: 'Monday-Thursday, Sunday: 3:00PM-10:00PM \n Friday-Saturday: Closed ',
      websiteUrl: 'http://crescentmagazine.org/top-5-campus-eateries',
      imageUrl: 'http://crescentmagazine.org/wp-content/uploads/2019/04/pell_020619_robertas2-750x471.jpg',
      description: "Located in North Campus Hall, Roberta's is an on-campus convenience store offering a wide assortment of snacks, groceries, toileties and more!"
    )
     
  ];
