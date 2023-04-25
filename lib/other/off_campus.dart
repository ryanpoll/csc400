import 'package:google_maps_flutter/google_maps_flutter.dart';

class OffCampus {
  String name;
  final LatLng position;
  String phone;
  String websiteUrl;
  String hours;
  String imageUrl;
  String description;

 OffCampus(
      { required this.name,
      required this.position,
      required this.phone,
      required this.websiteUrl,
      required this.hours,
      required this.imageUrl,
      required this.description});

}


List<OffCampus> storeList = <OffCampus>[
    OffCampus(
      name: 'Acropolis Diner',
      position: LatLng(41.36279799134644, -72.9241940779119),
      phone: '203-288-0400',
      websiteUrl: 'http://acropolisdinerct.com/',
      hours: ' Monday-Sunday: 6AM-12AM',
      imageUrl: 'https://media-cdn.grubhub.com/image/upload/d_search:browse-images:default.jpg/w_60,q_80,fl_lossy,dpr_2.0,c_fit,f_auto,h_60/gqspqltb1bqdpq6fadjq',
      description:'Use your HootLoot funds at the Acropolis Diner! Offering classic greek dining since 1974.'
    ),
    OffCampus(
      name: 'Ali Babas Kitchen',
      position:LatLng(41.34049089033041, -72.935556343804629),
      phone: '203-535-1164',
      websiteUrl: 'https://www.alibabaskitchen.com/',
      hours:'Sunday & Monday-Thursday: 11AM-10PM \n Saturday & Friday: 11AM-11PM',
      imageUrl: 'https://d3ciwvs59ifrt8.cloudfront.net/4f88561e-959f-4372-9b25-ddf71cf8d445/62f56676-c288-467b-be4c-e4d8bf755c37.png',
      description: "Ali Baba's Kitchen is a family owned restaurant that serves a Western twist on South Asian and Middle Eastern cuisine."
    ),
    OffCampus(
      name: 'Blake Street Convenience',
      position: LatLng(41.328065870507714, -72.95311087264024),
      phone: '203-691-9064',
      websiteUrl: 'https://blakeconvenience.com/',
      hours:'Monday-Sunday: 7AM-12AM',
      imageUrl: 'https://lh3.googleusercontent.com/p/AF1QipOgoyx2s1jSjNa0iXAenp-FEfcKs09EYqwW8jh9=w1080-h608-p-no-v0',
      description: 'Convenience store and smoke shop offereing beverages, snack, and more! '
    ),
    
    OffCampus(
      name: 'China Wok',
      position: LatLng(41.348178135290006, -72.93151550147499),
      phone: '203-288-9403',
      websiteUrl: 'https://www.chinawokhamden.com/',
      hours:'Monday-Thursday: 11:00AM-10:30PM \n Friday & Saturday: 11:00AM-11:00PM \n Sunday: 11:30AM-10:30PM',
      imageUrl: 'https://cdn.menuwithprice.com/Images/brand_logo/china-wok.png',
      description: 'Craving chinese cuisine? This is the place for you! If you like chinese cuisine, then China Wok is the place you need to try. Get what you love to eat quickly and effortlessly with delivery and pick-up options with Beyond Menu.'
    ),
    OffCampus(
      name: 'Cilantro Mexican Grill',
      position: LatLng(41.32928970688495, -72.9687599879811),
      phone: '203-389-1212',
      websiteUrl: 'http://cilantrofreshmexicangrill.com/',
      hours:'Sunday & Monday-Thursday: 11:30AM-9:00PM \n Friday & Saturday: 11:30AM-10:00PM',
      imageUrl: 'https://img.cdn4dd.com/p/fit=contain,width=200,height=200,format=auto,quality=95/media/restaurant/cover_square/e7e89398-8ccb-49cc-a164-05f2fc23f023.png',
      description: "At Cilantro Fresh Mexican Grill there is nothing to compare us to traditional 'fast food' other than the fact your food is made quickly while you wait. We use all fresh ingredients that are delivered daily to our door, all items are prepared in house while you wait."
    ),
    OffCampus(
      name: 'CVS/Pharmacy: New Haven',
      position: LatLng(41.32937584901871, -72.96969346450801),
      phone: '203-389-4714',
      websiteUrl: 'https://www.cvs.com/',
      hours:'Monday-Friday: 8:00AM-10:00PM \n Saturday & Sunday: 8:00AM-9:00PM',
      imageUrl: 'https://s3-media0.fl.yelpcdn.com/bphoto/leTJgM_IgobUnSRY6_FD0g/l.jpg',
      description: 'Drugstore chain selling a variety of beauty & health products, plus some grocery & household items.'
    ),
    OffCampus(
      name: 'CVS/Pharmacy: Hamden',
      position: LatLng(41.367499219927296, -72.91964294380422),
      phone: '203-389-4714',
      websiteUrl: 'https://www.cvs.com/',
      hours:'Monday-Friday: 8:00AM-10:00PM \n Saturday & Sunday: 8:00AM-10:00PM',
      imageUrl: 'https://fastly.4sqi.net/img/general/600x600/75884_j4_j_WFPv_3GDEcpinGvrcZGnvZO5DHtIP9CkIwj9pw.jpg',
      description: 'Drugstore chain selling a variety of beauty & health products, plus some grocery & household items.'
    ),
    OffCampus(
      name: 'Dayton Street Apizza',
      position: LatLng(41.329185237413014, -72.96865709962873),
      phone: '203-389-2454',
      websiteUrl: 'http://daytonstreetapizza.com/',
      hours:'Sunday & Monday-Thursday: 11:30AM-9:00PM \n Friday & Saturday: 11:30AM-10:00PM',
      imageUrl: 'https://media-cdn.grubhub.com/image/upload/d_search:browse-images:default.jpg/w_300,q_100,fl_lossy,dpr_2.0,c_fit,f_auto,h_300/nc7a8mbotyjslvgtnzxy',
      description: 'Dayton Street Apizza offers a wide variety of New Haven style pizza, wings, subs, dinners, salads, and more!'
    ),
    OffCampus(
      name: "Domino's Pizza",
      position: LatLng(41.31869552114516, -72.94906817264041),
      phone: '203-624-3317',
      websiteUrl: 'Sunday & Monday-Thursday: 10:30AM-12:00AM \n Friday & Saturday: 10:30AM-1:00AM',
      hours:'',
      imageUrl: 'https://cache.dominos.com/olo/5_11_2/assets/build/images/promo/dominos_social_logo.jpg',
      description: 'Delivery/carryout chain offering a wide range of pizzas & a variety of other dishes & sides.'
    ),
   
    OffCampus(
      name: 'Ixtapa Grill Mexican Restaurant',
      position: LatLng(41.38933591466846, -72.8992017438038),
      phone: '203-230-2586',
      websiteUrl: 'https://ixtapagrille.net/',
      hours:'Sunday & Monday-Thursday: 10:00AM-9:00PM \n Friday & Saturday: 11:00AM-10:00PM',
      imageUrl: 'https://media-cdn.grubhub.com/image/upload/d_search:browse-images:default.jpg/w_60,q_80,fl_lossy,dpr_2.0,c_fit,f_auto,h_60/smja0a9kguqhil1ugbfi',
      description: 'Intimate Mexican eatery with a festive ambiance serving standard dishes such as tacos & burritos.'
    ),
    OffCampus(
      name: 'Meineke Car Care Center',
      position: LatLng(41.329893304869735, -72.96906278798102),
      phone: '203-397-2353',
      websiteUrl: 'http://www.meineke.com/',
      hours:'Monday-Saturday: 7:30AM-6:00PM \n Sunday: Closed',
      imageUrl: 'https://theme.zdassets.com/theme_assets/11328873/bbb9b451124611482c0142937ce976ddaec4b0bf.png',
      description: 'Meineke Car Care Centers offer complete auto repair services including, oil changes, brake repair, exhaust services & more. Schedule an appointment today.'
    ),
    OffCampus(
      name: 'More Than Pizza',
      position: LatLng(41.32746089934973, -72.95298904380503),
      phone: '203-389-2222',
      websiteUrl: 'https://www.morethanpizzact.com/',
      hours:'Monday-Wednesday: 11:00AM-2:00AM \n Thursday-Saturday:11:00AM-3:00AM \n Sunday: 12:00PM-2:00AM',
      imageUrl: 'https://www.morethanpizzact.com/index_htm_files/937@2x.webp',
      description: ''
    ),
  
    OffCampus(
      name: 'Pizza Heaven II',
      position: LatLng(41.32874456058088, -72.95659658615234),
      phone: '203-764-2426',
      websiteUrl: 'https://www.pizzaheaven2.com/',
      hours:'Monday-Wednesday: 11:00AM-1:30AM \n Thursday-Saturday: 11:00AM-2:30AM \n Sunday: 12:00PM-1:30AM',
      imageUrl: 'https://www.pizzaheaven2.com/index_htm_files/1953@2x.jpg',
      description: 'Pizza Heaven 2 serves high quality food that is prepared by using fresh ingredients.'
    ),
    OffCampus(
      name: 'Rite Aid: New Haven',
      position: LatLng(41.305245110634864, -72.92681989962924),
      phone: '203-777-7248',
      websiteUrl: 'https://www.riteaid.com/',
      hours:'66 Church Street \n New Haven, CT \n Monday-Friday: 8:00AM-10:00PM \n Saturday & Sunday: 9:00AM-9:00PM',
      imageUrl: 'https://s3-media0.fl.yelpcdn.com/bphoto/qjYa4XXqwYlvRCQPbtMgqw/348s.jpg',
      description: 'Rite Aid pharmacy offers products and services to help you lead a healthy, happy life. Visit our online pharmacy, shop now, or find a store near you.'
    ),
    
    OffCampus(
      name: 'Rite Aid: West Haven',
      position: LatLng(41.27875000123377, -72.9421954321582),
      phone: '203-933-5260',
      websiteUrl: 'https://www.riteaid.com/',
      hours:' 70 Elm Street \n West Haven,CT \n Monday-Saturday: 8:00AM-10:00PM \n 8:00AM-9:00PM',
      imageUrl: 'https://dynl.mktgcdn.com/p/o6XUI2MYWN1iHzPAh8O44RQ6b10d21jx_C9O4u2J6Bw/600x338.jpg',
      description: 'Rite Aid pharmacy offers products and services to help you lead a healthy, happy life. Visit our online pharmacy, shop now, or find a store near you.'
    ),
    OffCampus(
      name: 'Rite Aid: New Haven',
      position: LatLng(41.30895463387835, -72.89478664380532),
      phone: '203-777-0695',
      websiteUrl: 'https://www.riteaid.com/',
      hours:' 325 Ferry Street \n New Haven, CT \n Monday-Sunday: 8:00AM-9:00PM',
      imageUrl: 'https://lh3.googleusercontent.com/p/AF1QipNogrQDECy0Pyw7pgBfMCUFLvqYQOh_-DIFFykk=s1360-w1360-h1020',
      description: 'Rite Aid pharmacy offers products and services to help you lead a healthy, happy life. Visit our online pharmacy, shop now, or find a store near you.'
    ),
    OffCampus(
      name: 'Rite Aid: East Haven',
      position: LatLng(41.28332603756484, -72.882941730311521),
      phone: '203-469-7648',
      websiteUrl: 'https://www.riteaid.com/',
      hours:'588 Main Street \n East Haven, CT \n Monday-Saturday: 8:00AM-10:00PM \n Sunday: 8:00AM-9:00PM',
      imageUrl: 'https://dynl.mktgcdn.com/p/DgqR_iW-Ax0tsHG_6xarK2ahuQRY4nyUkUcIuClGCmk/400x400.jpg',
      description: 'Rite Aid pharmacy offers products and services to help you lead a healthy, happy life. Visit our online pharmacy, shop now, or find a store near you.'
    ),
    OffCampus(
      name: 'Rite Aid: Hamden',
      position: LatLng(41.37010612519117, -72.9181065168155),
      phone: '203-288-3895',
      websiteUrl: 'https://www.riteaid.com/',
      hours:'2175 Dixwell Ave \n Hamden, CT \n Monday-Saturday: 8:00AM-9:00PM \n 8:00AM-6:00PM',
      imageUrl: 'https://dynl.mktgcdn.com/p/DgqR_iW-Ax0tsHG_6xarK2ahuQRY4nyUkUcIuClGCmk/400x400.jpg',
      description: 'Rite Aid pharmacy offers products and services to help you lead a healthy, happy life. Visit our online pharmacy, shop now, or find a store near you.'
    ),
    OffCampus(
      name: 'Stop & Shop',
      position: LatLng(41.31452403443663, -72.93778720674716),
      phone: '203-503-0105',
      websiteUrl: 'https://stopandshop.com/',
      hours:'Monday-Saturday: 7:00AM-10:00PM \n Sunday: 7:00AM-9:00PM',
      imageUrl: 'http://photos.prnewswire.com/prnfull/20110908/NY65221LOGO',
      description: 'A neighborhood grocer for more than 100 years, Stop & Shop offers a wide assortment with a focus on fresh, healthy options at a great value'
    ),
     OffCampus(
      name: 'Subway',
      position: LatLng(41.33446310984408, -72.975468803322),
      phone: '203-389-1520',
      websiteUrl: 'https://www.subway.com/en-US',
      hours:'Monday-Sunday: 9:00AM-10:00PM',
      imageUrl: 'https://lh3.googleusercontent.com/p/AF1QipOfYijD9qrLpQBtjq-2Pf5kODO0oDQWoJLlIxpF=s1360-w1360-h1020',
      description: 'Discover better-for-you sub sandwiches at Subway. View our menu of sandwiches, order online, find restaurants, order catering or buy gift cards'
    ),
     OffCampus(
      name: 'Three Brothers Diner',
      position: LatLng(41.34165663970864, -72.93530403031046),
      phone: '203-777-9420',
      websiteUrl: 'https://www.threebrosdiner.com/',
      hours:'Sunday & Monday-Thursday: 6:00AM-9:00PM \n Friday & Saturday: 6:00AM-10:00PM',
      imageUrl: 'https://images.getbento.com/accounts/f8b22e66f35131ce9f56c1bfbaa4d9cd/media/images/20221three_brothers_diner_FINAL_Main.png',
      description: 'Easygoing diner offering American comfort fare such as burgers & breakfast items plus take-out.'
    ),
     
     OffCampus(
      name: 'Wing Madness',
      position: LatLng(41.3328656088956, -72.9354529438049),
      phone: '203-562-1188',
      websiteUrl: 'https://wingmadness.com/',
      hours:'Monday-Thursday: 11:00AM-10:00PM \n Friday & Saturday: 11:00AM-11:00PM \n Sunday: 12:00PM-10:00PM',
      imageUrl: 'https://img.cdn4dd.com/cdn-cgi/image/fit=contain,width=1200,height=672,format=auto/https://doordash-static.s3.amazonaws.com/media/restaurant/cover/f346429e-d228-4758-a694-40386b10dd17.png',
      description: "Wing Madness is excited about wings, with 24 different flavors and a variety of delicious food such as shrimp, burgers, wraps, sandwiches, salads, and more."
    )
  ];
