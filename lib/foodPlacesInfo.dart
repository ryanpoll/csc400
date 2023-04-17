class FoodLocations{
  String name;
  String address;
  String phone;
  String hours;
  String menu;
  
  String imageUrl;
  String description;
  String foodOffered;

 FoodLocations(
      { required this.name,
      required this.address,
      required this.phone,
      required this.hours,
      required this.menu,
      required this.imageUrl,
      required this.description,
      required this.foodOffered});

}


List<FoodLocations> foodList = <FoodLocations>[
    FoodLocations(
      name: 'Connecticut Dining Hall',
      address:'501 Crescent St, Hamden, CT 06514',
      phone: '(203) 392-5283',
      hours: 'Breakfast 7:30AM - 10:00AM \r\n Lunch 11:00AM - 2:30PM \r\n Dinner 4:00PM - 9:00PM',
      menu: 'Link to online menu',
      imageUrl: 'https://content-service.sodexomyway.com/media/students%20hero%20sp%2021_tcm1054-117909_w1920_h976.jpg?url=https://southernct.sodexomyway.com/',
      description:"We are proud to offer a dining program complete with signature brands and menu selections that include just about every item you can imagine. Just feast your eyes on what we have available! Featuring a wide variety of fresh food designed to satisfy everyone's appetite with food choices to rival your favorite restaurants.",
      foodOffered: "Stations in Connecticut Hall include: \r\n - Sizzle, a traditional grill and griddle \r\n - Granary, offering breads, spreads, cereal and more \r\n - My Zone, a gluten free, peanut and tree-nut free pantry reserved for customers with allergies and other special dietary needs. ",
    ),
    FoodLocations(
      name: 'Adanti Student Center',
      address:'345 Fitch Street, Hamden, CT 06515',
      phone: '(203) 392-7278',
      hours: '11:00AM - 6:30PM',
      menu: 'Link to online menu',
      imageUrl: 'https://jcj-prod.s3.amazonaws.com/media/CACHE/images/media/image/scsu_adanti_19_lg/b699cef5f472de28bd9254411be2a7f0.jpg',
      description: "At the Adanti Student Center you will find four retail dining destinations including a full service Dunkin', Tres Habaneros, SubConnection, The Grill, and Bowlful as well as an assortment of beverages, snack and grab and go options. Also located in the Adanti Student Center is our full service Dunkin'. ",
      foodOffered: "Sub Connection:\r\n - SubConnection features 6” and 12” cold or toasted subs and wraps, prepared from high-quality meats and cheeses, garden-fresh produce and a variety of freshly baked breads, like Italian herb, cheese, wheat and white. SubConnection also offers a variety of freshly made garden salads, delicious soups and cookies. Every item is made to order, portions are always generous and sure to satisfy the heartiest of appetites.\r\nTres Habaneros \r\n-Serving authentic Mexican foods made from the freshest quality ingredients – including local fruits and vegetables, dairy products and naturally raised beef, pork and chicken, Tres Habaneros offers everything from burrito bowls to tacos to chips & house-made guacamole. These dishes are prepared right in front of you so you can customize to your liking."
    ),
    FoodLocations(
      name: "Dunkin'",
      address:'Adanti Student Center',
      phone: '(203) 392-7278',
      hours: 'Monday-Thursday: 7:30AM - 6:30pm \r\n Friday: 7:30AM - 2:30PM \r\n Saturday-Sunday: Closed',
      menu: 'Link to online menu',
      imageUrl: 'https://thesouthernnews.files.wordpress.com/2016/11/dunkin.jpg?w=860&h=280&crop=1',
      description: "Southern runs on Dunkin'! Enjoy our full service Dunkin' serving all of your favorite food and beverage items and conveniently located in the Adanti Student Center.",
      foodOffered: " "
    ),
        FoodLocations(
      name: "Roberta's",
      address:'North Campus Hall',
      phone: '(203) 392-7278',
      hours: 'Monday-Thursday,Sunday: 3:00PM-10:00pm \r\n Friday-Saturday: Closed',
      menu: 'Link to online menu',
      imageUrl: 'https://www.southernct.edu/sites/default/files/2018-08/SCSU_16_north_campus_market-0183.jpg',
      description: "Located in North Campus Hall, Roberta's is an on-campus convenience store offering a wide assortment of snacks, groceries, toileties and more!",
      foodOffered: " "
    ),
    FoodLocations(
      name: "Bagel Wagon",
      address:'Engleman Hall',
      phone: '(203) 392-7278',
      hours: 'Monday-Thursday,Sunday: 3:00PM-10:00pm \r\n Friday-Saturday: Closed',
      menu: 'Link to online menu',
      imageUrl: 'https://content-service.sodexomyway.com/media/coffeebagel_tcm1054-23666.jpg?url=https://southernct.sodexomyway.com/',
      description: "Located in North Campus Hall, Roberta's is an on-campus convenience store offering a wide assortment of snacks, groceries, toileties and more!",
      foodOffered: " "
    ),
    FoodLocations(
      name: "Owl Perch",
      address:'Buley Library',
      phone: '(203) 392-7278',
      hours: 'Monday-Thursday,Sunday: 3:00PM-10:00pm \r\n Friday-Saturday: Closed',
      menu: 'Link to online menu',
      imageUrl: 'https://pbs.twimg.com/media/CrItcOGW8AAKm7Q?format=jpg&name=large',
      description: "Located in North Campus Hall, Roberta's is an on-campus convenience store offering a wide assortment of snacks, groceries, toileties and more!",
      foodOffered: " "
    ),
      
  ];
