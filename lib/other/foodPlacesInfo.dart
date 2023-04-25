import 'package:google_maps_flutter/google_maps_flutter.dart';

class FoodLocations {
  String name;
  String address;
  String phone;
  String hours;
  String text;
  String menuURL;
  bool directions;
  LatLng location;

  String imageUrl;
  String description;
  String foodOffered;

  FoodLocations(
      {required this.name,
      required this.address,
      required this.phone,
      required this.hours,
      required this.text,
      required this.menuURL,
      required this.imageUrl,
      required this.description,
      required this.foodOffered,
      required this.directions,
      required this.location});
}

List<FoodLocations> foodList = <FoodLocations>[
  FoodLocations(
      name: 'Connecticut Dining Hall',
      address: '501 Crescent St, Hamden, CT 06514',
      phone: '(203) 392-5283',
      hours:
          'Breakfast 7:30AM -10:00AM \r\n Lunch 11:00AM -2:30PM \r\n Dinner 4:00PM -9:00PM',
      text: 'Click here to see the online menu',
      menuURL:
          'https://menus.sodexomyway.com/BiteMenu/Menu?menuId=22193&locationId=99060001&whereami=http://southernct.sodexomyway.com/dining-near-me/resident-dining',
      imageUrl:
          'https://content-service.sodexomyway.com/media/students%20hero%20sp%2021_tcm1054-117909_w1920_h976.jpg?url=https://southernct.sodexomyway.com/',
      description:
          "We are proud to offer a dining program complete with signature brands and menu selections that include just about every item you can imagine. Just feast your eyes on what we have available! Featuring a wide variety of fresh food designed to satisfy everyone's appetite with food choices to rival your favorite restaurants.",
      foodOffered:
          "Stations in Connecticut Hall include: \r\n - Sizzle, a traditional grill and griddle \r\n - Granary, offering breads, spreads, cereal and more \r\n - My Zone, a gluten free, peanut and tree-nut free pantry reserved for customers with allergies and other special dietary needs. ",
      directions: false,
      location: const LatLng(0.0, 0.0)),
  FoodLocations(
      name: 'Adanti Student Center',
      address: '345 Fitch Street, Hamden, CT 06515',
      phone: '(203) 392-7278',
      hours: '11:00AM - 6:30PM',
      text: 'Click here to get directions',
      menuURL: 'https://www.southernct.edu/student-life/student-center',
      imageUrl:
          'https://jcj-prod.s3.amazonaws.com/media/CACHE/images/media/image/scsu_adanti_19_lg/b699cef5f472de28bd9254411be2a7f0.jpg',
      description:
          "At the Adanti Student Center you will find four retail dining destinations including a full service Dunkin', Tres Habaneros, SubConnection, The Grill, and Bowlful as well as an assortment of beverages, snack and grab and go options. Also located in the Adanti Student Center is our full service Dunkin'. ",
      foodOffered:
          " ",
      directions: true,
      location: const LatLng(41.33176, -72.94879)),
  FoodLocations(
    name: "Dunkin'",
    address: '345 Fitch Street, Hamden, CT 06515',
    phone: '(203) 392-7278',
    hours:
        'Monday-Thursday: \r\n 7:30AM-6:30pm \r\n Friday: \r\n 7:30AM-2:30PM \r\n Saturday-Sunday: \r\n Closed',
    text: 'Click here to get directions',
    menuURL: '',
    imageUrl:
        'https://thesouthernnews.files.wordpress.com/2016/11/dunkin.jpg?w=860&h=280&crop=1',
    description:
        "Southern runs on Dunkin'! Enjoy our full service Dunkin' serving all of your favorite food and beverage items and conveniently located in the Adanti Student Center.",
    foodOffered: " ",
    directions: true,
    location: const LatLng(41.33232, -72.94856),
  ),
  FoodLocations(
      name: "Roberta's",
      address: 'North Campus Hall',
      phone: '(203) 392-7278',
      hours:
          'Monday-Thursday,Sunday: \r\n 3:00PM-10:00pm \r\n Friday-Saturday: \r\n Closed',
      text: 'Click here to get directions',
      menuURL: 'https://southernct.sodexomyway.com/dining-near-me/robertas',
      imageUrl:
          'https://www.southernct.edu/sites/default/files/2018-08/SCSU_16_north_campus_market-0183.jpg',
      description:
          "Located in North Campus Hall, Roberta's is an on-campus convenience store offering a wide assortment of snacks, groceries, toileties and more!",
      foodOffered: " ",
      directions: true,
      location: const LatLng(41.338938, -72.945836)),
  FoodLocations(
      name: "Bagel Wagon",
      address: 'Engleman Hall',
      phone: '(203) 392-7278',
      hours:
          'Monday-Thursday,Sunday: \r\n 3:00PM-10:00pm \r\n Friday-Saturday: \r\n Closed',
      text: 'Click here to get directions',
      menuURL: 'https://southernct.sodexomyway.com/dining-near-me/bagel_wagon',
      imageUrl:
          'https://content-service.sodexomyway.com/media/coffeebagel_tcm1054-23666_w1920_h976.jpg?url=https://southernct.sodexomyway.com/',
      description:
          "This bagels-and-more location is a prime spot for students, faculty, staff and guests to fuel up with a tasty breakfast or lunch. From the namesake bagels with a variety of sweet and savory cream cheese options, to lunch options, including wraps, soups and vegetarian and vegan dishes, and ‘We Proudly Serve’ Starbucks coffee, this diverse and appealing menu is sure to deliver brain food for Southern’s most powerful minds!",
      foodOffered: " ",
      directions: true,
      location: const LatLng(41.332344, -72.946643)),
  FoodLocations(
      name: "Owl Perch",
      address: 'Buley Library',
      phone: '(203) 392-7278',
      hours:
          'Monday-Thursday,Sunday: \r\n 3:00PM-10:00pm \r\n Friday-Saturday: \r\n Closed',
      text: 'Click here to get directions',
      menuURL: 'https://southernct.sodexomyway.com/dining-near-me/owl_perch',
      imageUrl:'http://crescentmagazine.org/wp-content/uploads/2019/04/pell_020119_owlperch-750x541.jpg',
      description:"Proudly serving Starbucks coffee, a variety of bottled beverages and snacks as well as our fresh made Simply to Go line of sandwiches, salads, fruit cups and more. Located in the library, Owl Perch is a convenient spot to refuel. ",
      foodOffered: " ",
      directions: true,
      location: const LatLng(41.333209, -72.948075)),
];
