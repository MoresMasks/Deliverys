import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_project/Menu/Beverages.dart';
import 'package:my_project/Menu/Bread%20&%20Bakery.dart';
import 'package:my_project/Menu/Frozen%20veg.dart';
import 'package:my_project/Menu/Fruit.dart';
import 'package:my_project/Menu/Homecare.dart';
import 'package:my_project/Menu/PetCare.dart';
import 'package:my_project/Menu/Vegetables.dart';
import 'package:my_project/Menu/egg.dart';
import '../Widgets/main_screen/image_scan.dart';
import '../cust_icon_icons.dart';

class MainHome extends StatefulWidget {
  MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  final _products = [
    ImageScan(
      image: 'assets/images/Product/Vegetables/Carrot.png',
      text: 'Carrot',
      prise: '35',
      lastprise: '25',
      routes: 0,
    ),
    ImageScan(
        image: 'assets/images/Product/Vegetables/Cabbage.png',
        text: 'Cabbage',
        prise: '',
        lastprise: '25',
        routes: 0),
    ImageScan(
        image: 'assets/images/Product/Vegetables/Tomats.png',
        text: 'Tomato',
        prise: '35',
        lastprise: '25',
        routes: 2),
    ImageScan(
        image: 'assets/images/Product/Vegetables/Garlic.png',
        text: 'Garlic',
        prise: '',
        lastprise: '25',
        routes: 2),
    ImageScan(
        image: 'assets/images/Product/Vegetables/Tomato.png',
        text: 'Tomato',
        prise: '35',
        lastprise: '25',
        routes: 2),
    ImageScan(
        image: 'assets/images/Product/Vegetables/Corn.png',
        text: 'Corn',
        prise: '35',
        lastprise: '25',
        routes: 2),
    ImageScan(
        image: 'assets/images/Product/Pet_Care/Pet.png',
        text: 'Pet Snack',
        prise: '35',
        lastprise: '25',
        routes: 0),
    ImageScan(
        image: 'assets/images/Product/Pet_Care/Potion.png',
        text: 'Potion Pet',
        prise: '35',
        lastprise: '25',
        routes: 0),
    ImageScan(
      image: 'assets/images/Product/Home_Care/Mois.png',
      text: 'Moisturizer',
      prise: '35',
      lastprise: '25',
      routes: 0,
    ),
    ImageScan(
        image: 'assets/images/Product/Home_Care/Vitamin.png',
        text: 'Vitamin Bundle',
        prise: '',
        lastprise: '25',
        routes: 0),
    ImageScan(
        image: 'assets/images/Product/Home_Care/Shower.png',
        text: 'Shower Gel',
        prise: '35',
        lastprise: '25',
        routes: 2),
    ImageScan(
        image: 'assets/images/Product/Home_Care/Facial.png',
        text: 'Facial Wash',
        prise: '',
        lastprise: '25',
        routes: 2),
    ImageScan(
        image: 'assets/images/Product/Home_Care/Onne.png',
        text: 'Onne Beauty',
        prise: '35',
        lastprise: '25',
        routes: 2),
    ImageScan(
        image: 'assets/images/Product/Home_Care/Fur.png',
        text: 'Fur Moisturozer',
        prise: '35',
        lastprise: '25',
        routes: 2),
    ImageScan(
      image: 'assets/images/Product/Fruit/Avacado.png',
      text: 'Avacado',
      prise: '35',
      lastprise: '25',
      routes: 0,
    ),
    ImageScan(
        image: 'assets/images/Product/Fruit/Banana.png',
        text: 'Banana',
        prise: '',
        lastprise: '25',
        routes: 0),
    ImageScan(
        image: 'assets/images/Product/Fruit/Orange.png',
        text: 'Orange',
        prise: '35',
        lastprise: '25',
        routes: 2),
    ImageScan(
        image: 'assets/images/Product/Fruit/Papaya.png',
        text: 'Papaya',
        prise: '',
        lastprise: '25',
        routes: 2),
    ImageScan(
        image: 'assets/images/Product/Fruit/PineApp.png',
        text: 'Pineapple',
        prise: '35',
        lastprise: '25',
        routes: 2),
    ImageScan(
        image: 'assets/images/Product/Fruit/Water.png',
        text: 'Watermeleon',
        prise: '35',
        lastprise: '25',
        routes: 2),
    ImageScan(
      image: 'assets/images/Product/Frozen_veg/Ice.png',
      text: 'Ice Cream',
      prise: '35',
      lastprise: '25',
      routes: 0,
    ),
    ImageScan(
        image: 'assets/images/Product/Frozen_veg/Mango.png',
        text: 'Manggo Ice',
        prise: '',
        lastprise: '25',
        routes: 0),
    ImageScan(
        image: 'assets/images/Product/Frozen_veg/SI.png',
        text: 'Strawberry Ice',
        prise: '35',
        lastprise: '25',
        routes: 2),
    ImageScan(
        image: 'assets/images/Product/Frozen_veg/Matcha.png',
        text: 'Matcha',
        prise: '',
        lastprise: '25',
        routes: 2),
    ImageScan(
        image: 'assets/images/Product/Frozen_veg/GIC.png',
        text: 'Grape Ice Cream',
        prise: '35',
        lastprise: '25',
        routes: 2),
    ImageScan(
        image: 'assets/images/Product/Frozen_veg/Frozen.png',
        text: 'Frozen Bottle',
        prise: '35',
        lastprise: '25',
        routes: 2),
    ImageScan(
      image: 'assets/images/Product/Egg/Brown.png',
      text: 'Brown egg',
      prise: '35',
      lastprise: '25',
      routes: 0,
    ),
    ImageScan(
        image: 'assets/images/Product/Egg/Fresh.png',
        text: 'Fresh Egg',
        prise: '',
        lastprise: '25',
        routes: 0),
    ImageScan(
        image: 'assets/images/Product/Egg/Bundle.png',
        text: 'Bundle Egg',
        prise: '35',
        lastprise: '25',
        routes: 2),
    ImageScan(
        image: 'assets/images/Product/Egg/Blue.png',
        text: 'Blue Egg',
        prise: '',
        lastprise: '25',
        routes: 2),
    ImageScan(
        image: 'assets/images/Product/Egg/Bird_Egg.png',
        text: 'Bird Egg',
        prise: '35',
        lastprise: '25',
        routes: 2),
    ImageScan(
        image: 'assets/images/Product/Egg/Egg.png',
        text: 'Egg',
        prise: '35',
        lastprise: '25',
        routes: 2),
    ImageScan(
      image: 'assets/images/Product/Bread&Bakery/Bc.png',
      text: 'Bread Chocolate',
      prise: '35',
      lastprise: '25',
      routes: 0,
    ),
    ImageScan(
        image: 'assets/images/Product/Bread&Bakery/CB.png',
        text: 'Circle Bakery',
        prise: '',
        lastprise: '25',
        routes: 0),
    ImageScan(
        image: 'assets/images/Product/Bread&Bakery/Cookies.png',
        text: 'Cookies',
        prise: '35',
        lastprise: '25',
        routes: 2),
    ImageScan(
        image: 'assets/images/Product/Bread&Bakery/LB.png',
        text: 'Long Bread',
        prise: '',
        lastprise: '25',
        routes: 2),
    ImageScan(
        image: 'assets/images/Product/Bread&Bakery/Donut.png',
        text: 'Donut',
        prise: '35',
        lastprise: '25',
        routes: 2),
    ImageScan(
        image: 'assets/images/Product/Bread&Bakery/Bread.png',
        text: 'Bread',
        prise: '35',
        lastprise: '25',
        routes: 2),
    ImageScan(
      image: 'assets/images/Product/Beverages/Punch.png',
      text: 'Strawberry Punch',
      prise: '35',
      lastprise: '25',
      routes: 0,
    ),
    ImageScan(
        image: 'assets/images/Product/Beverages/Lemonade.png',
        text: 'Lemonade',
        prise: '',
        lastprise: '25',
        routes: 0),
    ImageScan(
        image: 'assets/images/Product/Beverages/Chocolate.png',
        text: 'Chocolate',
        prise: '35',
        lastprise: '25',
        routes: 2),
    ImageScan(
        image: 'assets/images/Product/Beverages/Whisky.png',
        text: 'Whisky',
        prise: '',
        lastprise: '25',
        routes: 2),
    ImageScan(
        image: 'assets/images/Product/Beverages/Bakery.png',
        text: 'Chocolate Bakery',
        prise: '35',
        lastprise: '25',
        routes: 2),
    ImageScan(
        image: 'assets/images/Product/Beverages/Fruit.png',
        text: 'Stack Overflow',
        prise: '35',
        lastprise: '25',
        routes: 2),
  ];
  final _searchController = TextEditingController();

  var filterProductes = [];

  void _searchProducts() {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      filterProductes = _products.where((ImageScan production) {
        return production.text.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      filterProductes = _products;
    }

    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    _searchController.addListener((_searchProducts));
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Scaffold(
        // AppBar
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  CustIcon.vector,
                  size: 18,
                )),
          ],
          backgroundColor: Color(0xFF33907C),
          title: Text('Groceries'),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(70),

            // search style
            child: Container(
              width: 375,
              height: 65,
              child: TextField(
                  controller: _searchController,
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                  decoration: InputDecoration(
                      focusColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 30),
                          borderRadius: BorderRadius.circular(30)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 30),
                          borderRadius: BorderRadius.circular(30)),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xFF33907C),
                      ),
                      hintText: 'Search',
                      // hintStyle: ,
                      contentPadding: EdgeInsets.symmetric(horizontal: 16))),
            ),
          ),
        ),
        body: _searchController.text.isEmpty
            ? SafeArea(
                child: SingleChildScrollView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  child: Column(children: [
                    Container(
                        padding: EdgeInsets.only(left: 10),
                        height: 180,
                        width: double.infinity,
                        child: SingleChildScrollView(
                          //sroll to banners
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Image.asset(
                                      'assets/images/HomePage/products.png'),
                                  Container(
                                      padding: EdgeInsets.only(
                                          bottom: 40, right: 140),
                                      child: Text(
                                          'READY TO DELIVER TO \nYOUR HOME',
                                          style:
                                              TextStyle(color: Colors.white))),
                                  Container(
                                    padding:
                                        EdgeInsets.only(top: 50, right: 160),
                                    child: TextButton(
                                      style: ButtonStyle(
                                        shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                                side: BorderSide(
                                                    color: Colors.white,
                                                    width: 1.5),
                                                borderRadius:
                                                    BorderRadius.circular(45))),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        'START SHOPPING',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Image.asset('assets/images/HomePage/Projects.png')
                            ],
                          ),
                        )),
                    Row(
                      children: [
                        SizedBox(
                          width: 8,
                        ),
                        RowImagePage(
                            img: 'assets/images/HomePage/Beverages.png',
                            text: 'Beverages',
                            index: 0),
                        SizedBox(
                          width: 5,
                        ),
                        RowImagePage(
                            img: 'assets/images/HomePage/Bread&Bakery.png',
                            text: 'Bread & Bakery',
                            index: 1),
                        SizedBox(
                          width: 5,
                        ),
                        RowImagePage(
                            img: 'assets/images/HomePage/Vegetables.png',
                            text: 'Vegetables',
                            index: 2),
                        SizedBox(
                          width: 5,
                        ),
                        RowImagePage(
                            img: 'assets/images/HomePage/Fruit.png',
                            text: 'Fruit',
                            index: 3),
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        SizedBox(width: 8),
                        RowImagePage(
                            img: 'assets/images/HomePage/egg.png',
                            text: 'Egg',
                            index: 4),
                        SizedBox(width: 5),
                        RowImagePage(
                            img: 'assets/images/HomePage/Frozen_veg.png',
                            text: 'Frozen veg',
                            index: 5),
                        SizedBox(width: 5),
                        RowImagePage(
                            img: 'assets/images/HomePage/Homecare.png',
                            text: 'Homecare',
                            index: 6),
                        SizedBox(width: 5),
                        RowImagePage(
                            img: 'assets/images/HomePage/Pet_Care.png',
                            text: 'Pet Care',
                            index: 7),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        height: 40,
                        width: 400,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                child: Text(
                              'New Product',
                              style: TextStyle(
                                color: Color(0xFF4F4F4F),
                                fontSize: 18,
                              ),
                            )),
                            Container(
                              height: 37,
                              width: 125,
                              decoration: BoxDecoration(
                                  color: Color(0xFF33907C),
                                  borderRadius: BorderRadius.circular(30)),
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'See All',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      height: 210,
                      width: double.infinity,
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              ImageScan(
                                text: 'Coca Cola',
                                image: 'assets/images/HomePage/Colaa.png',
                                lastprise: '35',
                                prise: '25',
                                routes: 0,
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              ImageScan(
                                image: 'assets/images/HomePage/Brockles.png',
                                text: 'Brocolli',
                                prise: '',
                                lastprise: '25',
                                routes: 0,
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              ImageScan(
                                text: 'Coca Cola',
                                image: 'assets/images/HomePage/Colaa.png',
                                lastprise: '35',
                                prise: '25',
                                routes: 0,
                              ),
                            ],
                          )),
                    ),
                    Container(
                        height: 210,
                        padding: EdgeInsets.only(left: 5),
                        width: double.infinity,
                        child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                ImageScan(
                                  image: 'assets/images/HomePage/fish.png',
                                  text: 'Fish',
                                  prise: '',
                                  lastprise: '15',
                                  routes: 0,
                                ),
                                SizedBox(width: 12),
                                ImageScan(
                                  image: 'assets/images/HomePage/Shampoo.png',
                                  text: 'Shampoo',
                                  prise: '',
                                  lastprise: '25',
                                  routes: 0,
                                ),
                                SizedBox(width: 12),
                                ImageScan(
                                  image: 'assets/images/HomePage/Colaa.png',
                                  text: 'Coca Cola',
                                  prise: '25',
                                  lastprise: '35',
                                  routes: 0,
                                ),
                              ],
                            ))),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 353,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 182,
                                color: Color(0xFF33907C),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    left: 20, right: 20, top: 40),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Store to follow',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400)),
                                    Container(
                                      height: 35,
                                      width: 120,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Center(
                                          child: Text(
                                            'View all',
                                            style: TextStyle(
                                                color: Color(
                                                  0xFF33907C,
                                                ),
                                                fontSize: 15),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 12, top: 80),
                                height: 300,
                                width: double.infinity,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: FollowMe(
                                          abb: 'T',
                                          images:
                                              'assets/images/HomePage/Follow.png',
                                          colors: Color(0xFF33907C),
                                          FullSlive: 'Tradly Store',
                                        ),
                                      ),
                                      SizedBox(
                                        width: 12,
                                      ),
                                      FollowMe(
                                          abb: 'A',
                                          images:
                                              'assets/images/HomePage/fruts.png',
                                          colors: Color(0xFFA08DCF),
                                          FullSlive: 'Groceries store'),
                                      SizedBox(
                                        width: 12,
                                      ),
                                      FollowMe(
                                          abb: 'T',
                                          images:
                                              'assets/images/HomePage/Follow.png',
                                          colors: Color(0xFF33907C),
                                          FullSlive: 'Tradly Store')
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(),
                    ),
                  ]),
                ),
              )
            : GridView.builder(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                itemCount: filterProductes.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) {
                  final products = filterProductes[index];
                  return Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Wrap(
                      children: [products],
                    ),
                  );
                }));
    //   body: SafeArea(
    //     child: SingleChildScrollView(
    //       keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
    //       child: Column(children: [
    //         Container(
    //             padding: EdgeInsets.only(left: 10),
    //             height: 180,
    //             width: double.infinity,
    //             child: SingleChildScrollView(
    //               //sroll to banners
    //               scrollDirection: Axis.horizontal,
    //               child: Row(
    //                 children: [
    //                   Stack(
    //                     alignment: Alignment.center,
    //                     children: [
    //                       Image.asset('assets/images/HomePage/products.png'),
    //                       Container(
    //                           padding: EdgeInsets.only(bottom: 40, right: 140),
    //                           child: Text('READY TO DELIVER TO \nYOUR HOME',
    //                               style: TextStyle(color: Colors.white))),
    //                       Container(
    //                         padding: EdgeInsets.only(top: 50, right: 160),
    //                         child: TextButton(
    //                           style: ButtonStyle(
    //                             shape: MaterialStateProperty.all(
    //                                 RoundedRectangleBorder(
    //                                     side: BorderSide(
    //                                         color: Colors.white, width: 1.5),
    //                                     borderRadius:
    //                                         BorderRadius.circular(45))),
    //                           ),
    //                           onPressed: () {},
    //                           child: Text(
    //                             'START SHOPPING',
    //                             style: TextStyle(color: Colors.white),
    //                           ),
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                   Image.asset('assets/images/HomePage/Projects.png')
    //                 ],
    //               ),
    //             )),
    //         Row(
    //           children: [
    //             SizedBox(
    //               width: 8,
    //             ),
    //             RowImagePage(
    //                 img: 'assets/images/HomePage/Beverages.png',
    //                 text: 'Beverages',
    //                 index: 0),
    //             SizedBox(
    //               width: 5,
    //             ),
    //             RowImagePage(
    //                 img: 'assets/images/HomePage/Bread&Bakery.png',
    //                 text: 'Bread & Bakery',
    //                 index: 1),
    //             SizedBox(
    //               width: 5,
    //             ),
    //             RowImagePage(
    //                 img: 'assets/images/HomePage/Vegetables.png',
    //                 text: 'Vegetables',
    //                 index: 2),
    //             SizedBox(
    //               width: 5,
    //             ),
    //             RowImagePage(
    //                 img: 'assets/images/HomePage/Fruit.png',
    //                 text: 'Fruit',
    //                 index: 3),
    //           ],
    //         ),
    //         SizedBox(
    //           height: 3,
    //         ),
    //         Row(
    //           children: [
    //             SizedBox(width: 8),
    //             RowImagePage(
    //                 img: 'assets/images/HomePage/egg.png',
    //                 text: 'Egg',
    //                 index: 4),
    //             SizedBox(width: 5),
    //             RowImagePage(
    //                 img: 'assets/images/HomePage/Frozen_veg.png',
    //                 text: 'Frozen veg',
    //                 index: 5),
    //             SizedBox(width: 5),
    //             RowImagePage(
    //                 img: 'assets/images/HomePage/Homecare.png',
    //                 text: 'Homecare',
    //                 index: 6),
    //             SizedBox(width: 5),
    //             RowImagePage(
    //                 img: 'assets/images/HomePage/Pet_Care.png',
    //                 text: 'Pet Care',
    //                 index: 7),
    //           ],
    //         ),
    //         SizedBox(
    //           height: 40,
    //         ),
    //         Container(
    //             padding: EdgeInsets.only(left: 20, right: 20),
    //             height: 40,
    //             width: 400,
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 Container(
    //                     child: Text(
    //                   'New Product',
    //                   style: TextStyle(
    //                     color: Color(0xFF4F4F4F),
    //                     fontSize: 18,
    //                   ),
    //                 )),
    //                 Container(
    //                   height: 37,
    //                   width: 125,
    //                   decoration: BoxDecoration(
    //                       color: Color(0xFF33907C),
    //                       borderRadius: BorderRadius.circular(30)),
    //                   child: TextButton(
    //                     onPressed: () {},
    //                     child: Text(
    //                       'See All',
    //                       style: TextStyle(
    //                         color: Colors.white,
    //                         fontSize: 17,
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //             )),
    //         Container(
    //           padding: EdgeInsets.only(left: 5),
    //           height: 210,
    //           width: double.infinity,
    //           child: SingleChildScrollView(
    //               scrollDirection: Axis.horizontal,
    //               child: Row(
    //                 children: [
    //                   ImageScan(
    //                     text: 'Coca Cola',
    //                     image: 'assets/images/HomePage/Colaa.png',
    //                     lastprise: '35',
    //                     prise: '25',
    //                     routes: 0,
    //                   ),
    //                   SizedBox(
    //                     width: 12,
    //                   ),
    //                   ImageScan(
    //                     image: 'assets/images/HomePage/Brockles.png',
    //                     text: 'Brocolli',
    //                     prise: '',
    //                     lastprise: '25',
    //                     routes: 0,
    //                   ),
    //                   SizedBox(
    //                     width: 12,
    //                   ),
    //                   ImageScan(
    //                     text: 'Coca Cola',
    //                     image: 'assets/images/HomePage/Colaa.png',
    //                     lastprise: '35',
    //                     prise: '25',
    //                     routes: 0,
    //                   ),
    //                 ],
    //               )),
    //         ),
    //         Container(
    //             height: 210,
    //             padding: EdgeInsets.only(left: 5),
    //             width: double.infinity,
    //             child: SingleChildScrollView(
    //                 scrollDirection: Axis.horizontal,
    //                 child: Row(
    //                   children: [
    //                     ImageScan(
    //                       image: 'assets/images/HomePage/fish.png',
    //                       text: 'Fish',
    //                       prise: '',
    //                       lastprise: '15',
    //                       routes: 0,
    //                     ),
    //                     SizedBox(width: 12),
    //                     ImageScan(
    //                       image: 'assets/images/HomePage/Shampoo.png',
    //                       text: 'Shampoo',
    //                       prise: '',
    //                       lastprise: '25',
    //                       routes: 0,
    //                     ),
    //                     SizedBox(width: 12),
    //                     ImageScan(
    //                       image: 'assets/images/HomePage/Colaa.png',
    //                       text: 'Coca Cola',
    //                       prise: '25',
    //                       lastprise: '35',
    //                       routes: 0,
    //                     ),
    //                   ],
    //                 ))),
    //         SizedBox(
    //           height: 20,
    //         ),
    //         Container(
    //           height: 353,
    //           width: double.infinity,
    //           child: Column(
    //             children: [
    //               Stack(
    //                 children: [
    //                   Container(
    //                     height: 182,
    //                     color: Color(0xFF33907C),
    //                   ),
    //                   Container(
    //                     padding: EdgeInsets.only(left: 20, right: 20, top: 40),
    //                     child: Row(
    //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                       children: [
    //                         Text('Store to follow',
    //                             style: TextStyle(
    //                                 color: Colors.white,
    //                                 fontSize: 18,
    //                                 fontWeight: FontWeight.w400)),
    //                         Container(
    //                           height: 35,
    //                           width: 120,
    //                           decoration: BoxDecoration(
    //                               color: Colors.white,
    //                               borderRadius: BorderRadius.circular(30)),
    //                           child: TextButton(
    //                             onPressed: () {},
    //                             child: Center(
    //                               child: Text(
    //                                 'View all',
    //                                 style: TextStyle(
    //                                     color: Color(
    //                                       0xFF33907C,
    //                                     ),
    //                                     fontSize: 15),
    //                               ),
    //                             ),
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                   Container(
    //                     padding: EdgeInsets.only(left: 12, top: 80),
    //                     height: 300,
    //                     width: double.infinity,
    //                     child: SingleChildScrollView(
    //                       scrollDirection: Axis.horizontal,
    //                       child: Row(
    //                         mainAxisAlignment: MainAxisAlignment.center,
    //                         children: [
    //                           Container(
    //                             child: FollowMe(
    //                               abb: 'T',
    //                               images: 'assets/images/HomePage/Follow.png',
    //                               colors: Color(0xFF33907C),
    //                               FullSlive: 'Tradly Store',
    //                             ),
    //                           ),
    //                           SizedBox(
    //                             width: 12,
    //                           ),
    //                           FollowMe(
    //                               abb: 'A',
    //                               images: 'assets/images/HomePage/fruts.png',
    //                               colors: Color(0xFFA08DCF),
    //                               FullSlive: 'Groceries store'),
    //                           SizedBox(
    //                             width: 12,
    //                           ),
    //                           FollowMe(
    //                               abb: 'T',
    //                               images: 'assets/images/HomePage/Follow.png',
    //                               colors: Color(0xFF33907C),
    //                               FullSlive: 'Tradly Store')
    //                         ],
    //                       ),
    //                     ),
    //                   )
    //                 ],
    //               ),
    //             ],
    //           ),
    //         ),
    //         SingleChildScrollView(
    //           scrollDirection: Axis.horizontal,
    //           child: Row(),
    //         ),
    //       ]),
    //     ),
    //   ),
    // );
  }
}

class FollowMe extends StatelessWidget {
  final String images;
  final String abb;
  final Color colors;
  final String FullSlive;
  const FollowMe({
    Key? key,
    required this.abb,
    required this.images,
    required this.colors,
    required this.FullSlive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Image.asset(images),
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: 25),
        width: 160,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 64,
              width: 64,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(40),
                  color: colors),
              child: Center(
                child: Text(
                  abb,
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
                child: Text(FullSlive,
                    style: TextStyle(
                      fontSize: 18,
                    ))),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                  color: Color(0xFF33907C),
                  borderRadius: BorderRadius.circular(50)),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Follow',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            )
          ],
        ),
      ),
    ]);
  }
}

class RowImagePage extends StatelessWidget {
  final int index;
  final String img;
  final String text;

  List page = [
    BavaragesPage(),
    BreadPage(),
    Vegetables(),
    FruitPage(),
    EggPage(),
    FrozenVegPage(),
    HomeCarPage(),
    PetCarePage(),
  ];

  RowImagePage(
      {Key? key, required this.img, required this.text, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(img),
        Container(
            height: 95,
            width: 95,
            child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => page[index]));
              },
              child: Text(
                text,
                style: TextStyle(color: Colors.white),
              ),
            ))
      ],
    );
  }
}
