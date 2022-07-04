import 'package:flutter/material.dart';
import '../Widgets/main_screen/image_scan.dart';
import '../cust_icon_icons.dart';

class BrowsePage extends StatefulWidget {
  BrowsePage({Key? key}) : super(key: key);

  @override
  State<BrowsePage> createState() => _BrowsePageState();
}

class _BrowsePageState extends State<BrowsePage> {
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

  var filterProducts = <ImageScan>[];

  void _searchProducts() {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      filterProducts = _products.where((ImageScan product) {
        return product.text.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      filterProducts = _products;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _searchProducts();
    _searchController.addListener((_searchProducts));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
          title: Text('Browse'),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            // search style
            child: Container(
              width: 375,
              height: 65,
              child: TextField(
                  controller: _searchController,
                  style: TextStyle(color: Colors.black),
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
        body: GridView.builder(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            itemCount: filterProducts.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              final products = filterProducts[index];
              return Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Wrap(
                  children: [products],
                ),
              );
            })

        // itemCount: _products.length,
        // itemBuilder: (BuildContext context, int index) {
        //   final products = _products[index];
        //   return Wrap(
        //     alignment: WrapAlignment,
        //     children: [products],
        //   );
        // }),
        // body: ListView(
        //   children: [
        //     Wrap(
        //       alignment: WrapAlignment.spaceAround,
        //       children: [
        //         ImageScan(
        //             image: 'assets/images/Browse/apple.png',
        //             text: 'Apple',
        //             prise: '35',
        //             lastprise: '25',
        //             routes: 0),
        //         ImageScan(
        //             image: 'assets/images/Browse/apple.png',
        //             text: 'Apple',
        //             prise: '35',
        //             lastprise: '25',
        //             routes: 0),
        //         ImageScan(
        //             image: 'assets/images/Browse/apple.png',
        //             text: 'Apple',
        //             prise: '35',
        //             lastprise: '25',
        //             routes: 0),
        //         ImageScan(
        //             image: 'assets/images/Browse/apple.png',
        //             text: 'Apple',
        //             prise: '35',
        //             lastprise: '25',
        //             routes: 0),
        //       ],
        //     )
        //   ],)
        );
  }
}
