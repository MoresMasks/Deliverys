import 'package:flutter/material.dart';
import 'package:my_project/Widgets/auth/main_page.dart';
import '../Widgets/main_screen/image_scan.dart';
import 'body.dart';

class BavaragesPage extends StatefulWidget {
  BavaragesPage({Key? key}) : super(key: key);

  @override
  State<BavaragesPage> createState() => _BavaragesPageState();
}

class _BavaragesPageState extends State<BavaragesPage> {
  List<String> items = [
    'Category',
    'Beverages',
    'Bread & Bakery',
    'Vegetables',
    'Fruit',
    'Egg',
    'Frozen veg',
    'Home Care',
    'Pet Care'
  ];
  String selectedItem = 'Category';

  final _coctails = [
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App Bar
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.0),
        child: Body(
          text: 'Beverages',
        ),
      ),

      // body: Center(
      //   child: DropdownButton(
      //       icon: Icon(Icons.format_line_spacing),
      //       value: selectedItem,
      //       items: items
      //           .map((item) => DropdownMenuItem(
      //                 value: item,
      //                 child: Text(
      //                   item,
      //                   style: TextStyle(fontSize: 16),
      //                 ),
      //               ))
      //           .toList(),
      //       onChanged: (item) => setState(
      //             () => selectedItem = item.toString(),
      //           )),
      // )

      body: GridView.builder(
          itemCount: _coctails.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Wrap(
                children: [_coctails[index]],
              ),
            );
          }),
    );
  }
}
