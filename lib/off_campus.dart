class OffCampus {
  String name;
  String address;
  String phone;
  String websiteUrl;
  String hours;
  String imageUrl;
  String description;

 OffCampus(
      { required this.name,
      required this.address,
      required this.phone,
      required this.websiteUrl,
      required this.hours,
      required this.imageUrl,
      required this.description});
}


List<OffCampus> storeList = <OffCampus>[
    OffCampus(
      name: 'Acropolis Diner',
      address:'1864 Dixwell Ave, Hamden, CT',
      phone: '203-288-0400',
      websiteUrl: 'http://acropolisdinerct.com/',
      hours: ' Monday-Sunday: 6AM-12AM',
      imageUrl: 'https://media-cdn.grubhub.com/image/upload/d_search:browse-images:default.jpg/w_60,q_80,fl_lossy,dpr_2.0,c_fit,f_auto,h_60/gqspqltb1bqdpq6fadjq',
      description:'Use your HootLoot funds at the Acropolis Diner! Offering classic greek dining since 1974.'
    ),
    OffCampus(
      name: 'Ali Babas Kitchen',
      address:'986 Dixwell Ave, Hamden, CT',
      phone: '203-535-1164',
      websiteUrl: 'https://www.alibabaskitchen.com/',
      hours:'Sunday & Monday-Thursday: 11AM-10PM \n Saturday & Friday: 11AM-11PM',
      imageUrl: 'https://d3ciwvs59ifrt8.cloudfront.net/4f88561e-959f-4372-9b25-ddf71cf8d445/62f56676-c288-467b-be4c-e4d8bf755c37.png',
      description: "Ali Baba's Kitchen is a family owned restaurant that serves a Western twist on South Asian and Middle Eastern cuisine."
    ),
    OffCampus(
      name: 'Blake Street Convenience',
      address:'295 Blake Street, New Haven, CT',
      phone: '203-691-9064',
      websiteUrl: 'https://blakeconvenience.com/',
      hours:'Monday-Sunday: 7AM-12AM',
      imageUrl: 'https://lh3.googleusercontent.com/p/AF1QipOgoyx2s1jSjNa0iXAenp-FEfcKs09EYqwW8jh9=w1080-h608-p-no-v0',
      description: 'Convenience store and smoke shop offereing beverages, snack, and more! '
    ),
    OffCampus(
      name: "Brother Jimmy's BBQ",
      address:'196 Crown Street, New Haven, CT',
      phone: '203-535-0843',
      websiteUrl: 'https://brotherjimmys.com/new_haven/',
      hours:'Monday - Thursday 11:30am - 10pm \n Friday 11:30am - 11pm \n Saturday 11:30am - 11pm \n Sunday 11am - 10pm',
      imageUrl: 'https://brotherjimmys.com/static/images/logo.png',
      description: "Brother Jimmy's is a full service, high energy sports bar and restaurant specializing in the finest of Southern BBQ for over 25 Years."
),
    OffCampus(
      name: 'China Wok',
      address:'1245 Dixwell Ave, Hamden, CT',
      phone: '203-288-9403',
      websiteUrl: 'https://www.chinawokhamden.com/',
      hours:'Monday-Thursday: 11:00AM-10:30PM \n Friday & Saturday: 11:00AM-11:00PM \n Sunday: 11:30AM-10:30PM',
      imageUrl: 'https://cdn.menuwithprice.com/Images/brand_logo/china-wok.png',
      description: 'Craving chinese cuisine? This is the place for you! If you like chinese cuisine, then China Wok is the place you need to try. Get what you love to eat quickly and effortlessly with delivery and pick-up options with Beyond Menu.'
    ),
    OffCampus(
      name: 'Cilantro Mexican Grill',
      address:'1158 Whalley Ave, New Haven, CT',
      phone: '203-389-1212',
      websiteUrl: 'http://cilantrofreshmexicangrill.com/',
      hours:'Sunday & Monday-Thursday: 11:30AM-9:00PM \n Friday & Saturday: 11:30AM-10:00PM',
      imageUrl: 'https://img.cdn4dd.com/p/fit=contain,width=200,height=200,format=auto,quality=95/media/restaurant/cover_square/e7e89398-8ccb-49cc-a164-05f2fc23f023.png',
      description: "At Cilantro Fresh Mexican Grill there is nothing to compare us to traditional 'fast food' other than the fact your food is made quickly while you wait. We use all fresh ingredients that are delivered daily to our door, all items are prepared in house while you wait."
    ),
    OffCampus(
      name: 'CVS/Pharmacy',
      address:'1150 Whalley Ave, New Haven, CT',
      phone: '203-389-4714',
      websiteUrl: 'https://www.cvs.com/',
      hours:'Monday-Friday: 8:00AM-10:00PM \n Saturday & Sunday: 8:00AM-9:00PM',
      imageUrl: 'https://s3-media0.fl.yelpcdn.com/bphoto/leTJgM_IgobUnSRY6_FD0g/l.jpg',
      description: 'Drugstore chain selling a variety of beauty & health products, plus some grocery & household items.'
    ),
    OffCampus(
      name: 'CVS/Pharmacy',
      address:'2045 Dixwell Ave, Hamden, CT',
      phone: '203-389-4714',
      websiteUrl: 'https://www.cvs.com/',
      hours:'Monday-Friday: 8:00AM-10:00PM \n Saturday & Sunday: 8:00AM-10:00PM',
      imageUrl: 'https://fastly.4sqi.net/img/general/600x600/75884_j4_j_WFPv_3GDEcpinGvrcZGnvZO5DHtIP9CkIwj9pw.jpg',
      description: 'Drugstore chain selling a variety of beauty & health products, plus some grocery & household items.'
    ),
    OffCampus(
      name: 'Dayton Street Apizza',
      address:'60 Dayton Street, New Haven, CT',
      phone: '203-389-2454',
      websiteUrl: 'http://daytonstreetapizza.com/',
      hours:'Sunday & Monday-Thursday: 11:30AM-9:00PM \n Friday & Saturday: 11:30AM-10:00PM',
      imageUrl: 'https://media-cdn.grubhub.com/image/upload/d_search:browse-images:default.jpg/w_300,q_100,fl_lossy,dpr_2.0,c_fit,f_auto,h_300/nc7a8mbotyjslvgtnzxy',
      description: 'Dayton Street Apizza offers a wide variety of New Haven style pizza, wings, subs, dinners, salads, and more!'
    ),
    OffCampus(
      name: "Domino's Pizza",
      address:'357 Whalley Ave, New Haven, CT',
      phone: '203-624-3317',
      websiteUrl: 'Sunday & Monday-Thursday: 10:30AM-12:00AM \n Friday & Saturday: 10:30AM-1:00AM',
      hours:'',
      imageUrl: 'https://cache.dominos.com/olo/5_11_2/assets/build/images/promo/dominos_social_logo.jpg',
      description: 'Delivery/carryout chain offering a wide range of pizzas & a variety of other dishes & sides.'
    ),
   
    OffCampus(
      name: 'Ixtapa Grill Mexican Restaurant',
      address:'2547 Whitney Ave Hamden, CT',
      phone: '203-230-2586',
      websiteUrl: 'https://ixtapagrille.net/',
      hours:'Sunday & Monday-Thursday: 10:00AM-9:00PM \n Friday & Saturday: 11:00AM-10:00PM',
      imageUrl: 'https://media-cdn.grubhub.com/image/upload/d_search:browse-images:default.jpg/w_60,q_80,fl_lossy,dpr_2.0,c_fit,f_auto,h_60/smja0a9kguqhil1ugbfi',
      description: 'Intimate Mexican eatery with a festive ambiance serving standard dishes such as tacos & burritos.'
    ),
    OffCampus(
      name: 'Meineke Car Care Center',
      address:'1175 Whalley Ave, New Haven, CT',
      phone: '203-397-2353',
      websiteUrl: 'http://www.meineke.com/',
      hours:'Monday-Saturday: 7:30AM-6:00PM \n Sunday: Closed',
      imageUrl: 'https://theme.zdassets.com/theme_assets/11328873/bbb9b451124611482c0142937ce976ddaec4b0bf.png',
      description: 'Meineke Car Care Centers offer complete auto repair services including, oil changes, brake repair, exhaust services & more. Schedule an appointment today.'
    ),
    OffCampus(
      name: 'More Than Pizza',
      address:'283 Blake Street, New Haven, CT',
      phone: '203-389-2222',
      websiteUrl: 'https://www.morethanpizzact.com/',
      hours:'Monday-Wednesday: 11:00AM-2:00AM \n Thursday-Saturday:11:00AM-3:00AM \n Sunday: 12:00PM-2:00AM',
      imageUrl: 'https://www.morethanpizzact.com/index_htm_files/937@2x.webp',
      description: ''
    ),
  
    OffCampus(
      name: 'Pizza Heaven II',
      address:'410 Blake Street, New Haven, CT',
      phone: '203-764-2426',
      websiteUrl: 'https://www.pizzaheaven2.com/',
      hours:'Monday-Wednesday: 11:00AM-1:30AM \n Thursday-Saturday: 11:00AM-2:30AM \n Sunday: 12:00PM-1:30AM',
      imageUrl: 'https://www.pizzaheaven2.com/index_htm_files/1953@2x.jpg',
      description: 'Pizza Heaven 2 serves high quality food that is prepared by using fresh ingredients.'
    ),
    OffCampus(
      name: 'Rite Aid #00441',
      address:'66 Church Street, New Haven, CT',
      phone: '203-777-7248',
      websiteUrl: 'https://www.riteaid.com/',
      hours:'Monday-Friday: 8:00AM-10:00PM \n Saturday & Sunday: 9:00AM-9:00PM',
      imageUrl: 'https://s3-media0.fl.yelpcdn.com/bphoto/qjYa4XXqwYlvRCQPbtMgqw/348s.jpg',
      description: 'Rite Aid pharmacy offers products and services to help you lead a healthy, happy life. Visit our online pharmacy, shop now, or find a store near you.'
    ),
    OffCampus(
      name: 'Rite Aid #01033',
      address:'85 Middletown Ave, North Haven, CT',
      phone: '203-865-3179',
      websiteUrl: 'https://www.riteaid.com/',
      hours:'Monday-Friday: 8:00AM-9:00PM \n Saturday: 8:00AM-7:00PM \n Sunday: 8:00AM-6:00PM',
      imageUrl: 'https://images1.loopnet.com/i2/GzaStBVrmtgYMQWXdTp2-He77ujnmgCShXvXvHcK6eM/112/image.jpg',
      description: 'Rite Aid pharmacy offers products and services to help you lead a healthy, happy life. Visit our online pharmacy, shop now, or find a store near you.'
    ),
    OffCampus(
      name: 'Rite Aid #01839',
      address:'70 Elm Street, West Haven, CT',
      phone: '203-933-5260',
      websiteUrl: 'https://www.riteaid.com/',
      hours:'Monday-Saturday: 8:00AM-10:00PM \n 8:00AM-9:00PM',
      imageUrl: 'https://dynl.mktgcdn.com/p/o6XUI2MYWN1iHzPAh8O44RQ6b10d21jx_C9O4u2J6Bw/600x338.jpg',
      description: 'Rite Aid pharmacy offers products and services to help you lead a healthy, happy life. Visit our online pharmacy, shop now, or find a store near you.'
    ),
    OffCampus(
      name: 'Rite Aid #01882',
      address:'325 Ferry Street, New Haven, CT',
      phone: '203-777-0695',
      websiteUrl: 'https://www.riteaid.com/',
      hours:'Monday-Sunday: 8:00AM-9:00PM',
      imageUrl: 'https://lh3.googleusercontent.com/p/AF1QipNogrQDECy0Pyw7pgBfMCUFLvqYQOh_-DIFFykk=s1360-w1360-h1020',
      description: 'Rite Aid pharmacy offers products and services to help you lead a healthy, happy life. Visit our online pharmacy, shop now, or find a store near you.'
    ),
    OffCampus(
      name: 'Rite Aid #04778',
      address:'588 Main Street, East Haven, CT',
      phone: '203-469-7648',
      websiteUrl: 'https://www.riteaid.com/',
      hours:'Monday-Saturday: 8:00AM-10:00PM \n Sunday: 8:00AM-9:00PM',
      imageUrl: 'https://dynl.mktgcdn.com/p/DgqR_iW-Ax0tsHG_6xarK2ahuQRY4nyUkUcIuClGCmk/400x400.jpg',
      description: 'Rite Aid pharmacy offers products and services to help you lead a healthy, happy life. Visit our online pharmacy, shop now, or find a store near you.'
    ),
    OffCampus(
      name: 'Rite Aid #10375',
      address:'2175 Dixwell Ave, Hamden, CT',
      phone: '203-288-3895',
      websiteUrl: 'https://www.riteaid.com/',
      hours:'Monday-Saturday: 8:00AM-9:00PM \n 8:00AM-6:00PM',
      imageUrl: 'https://dynl.mktgcdn.com/p/DgqR_iW-Ax0tsHG_6xarK2ahuQRY4nyUkUcIuClGCmk/400x400.jpg',
      description: 'Rite Aid pharmacy offers products and services to help you lead a healthy, happy life. Visit our online pharmacy, shop now, or find a store near you.'
    ),
    OffCampus(
      name: 'Stop & Shop #2633',
      address:'150 Whalley Ave, New Haven, CT',
      phone: '203-503-0105',
      websiteUrl: 'https://stopandshop.com/',
      hours:'Monday-Saturday: 7:00AM-10:00PM \n Sunday: 7:00AM-9:00PM',
      imageUrl: 'http://photos.prnewswire.com/prnfull/20110908/NY65221LOGO',
      description: 'A neighborhood grocer for more than 100 years, Stop & Shop offers a wide assortment with a focus on fresh, healthy options at a great value'
    ),
     OffCampus(
      name: 'Subway',
      address:'1461 Whalley Avenue, New Haven, CT',
      phone: '203-389-1520',
      websiteUrl: 'https://www.subway.com/en-US',
      hours:'Monday-Sunday: 9:00AM-10:00PM',
      imageUrl: 'https://lh3.googleusercontent.com/p/AF1QipOfYijD9qrLpQBtjq-2Pf5kODO0oDQWoJLlIxpF=s1360-w1360-h1020',
      description: 'Discover better-for-you sub sandwiches at Subway. View our menu of sandwiches, order online, find restaurants, order catering or buy gift cards'
    ),
     OffCampus(
      name: 'Three Brothers Diner',
      address:'1038 Dixwell Ave, Hamden, CT',
      phone: '203-777-9420',
      websiteUrl: 'https://www.threebrosdiner.com/',
      hours:'Sunday & Monday-Thursday: 6:00AM-9:00PM \n Friday & Saturday: 6:00AM-10:00PM',
      imageUrl: 'https://images.getbento.com/accounts/f8b22e66f35131ce9f56c1bfbaa4d9cd/media/images/20221three_brothers_diner_FINAL_Main.png',
      description: 'Easygoing diner offering American comfort fare such as burgers & breakfast items plus take-out.'
    ),
     OffCampus(
      name: 'White Stone Mini Mart',
      address:'144 Arch Street, Hamden, CT',
      phone: '203-772-4558',
      websiteUrl: '',
      hours:'',
      imageUrl: 'https://s.hdnux.com/photos/01/25/41/77/22421495/5/1500x0.jpg',
      description: ''
    ),
     OffCampus(
      name: 'Wing Madness',
      address:'716 Dixwell Ave, New Haven, CT',
      phone: '203-562-1188',
      websiteUrl: 'https://wingmadness.com/',
      hours:'Monday-Thursday: 11:00AM-10:00PM \n Friday & Saturday: 11:00AM-11:00PM \n Sunday: 12:00PM-10:00PM',
      imageUrl: 'https://img.cdn4dd.com/cdn-cgi/image/fit=contain,width=1200,height=672,format=auto/https://doordash-static.s3.amazonaws.com/media/restaurant/cover/f346429e-d228-4758-a694-40386b10dd17.png',
      description: "Wing Madness is excited about wings, with 24 different flavors and a variety of delicious food such as shrimp, burgers, wraps, sandwiches, salads, and more."
    )
  ];
