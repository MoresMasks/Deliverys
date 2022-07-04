import 'package:flutter/material.dart';
import 'package:my_project/Widgets/main_screen/image_scan.dart';

import 'body.dart';

class BreadPage extends StatefulWidget {
  const BreadPage({Key? key}) : super(key: key);

  @override
  State<BreadPage> createState() => _BreadPageState();
}

class _BreadPageState extends State<BreadPage> {
  final _breadstate = [
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
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.0),
        child: Body(
          text: 'Bread & Bakery',
        ),
      ),
      body: GridView.builder(
          itemCount: _breadstate.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Wrap(
                children: [_breadstate[index]],
              ),
            );
          }),
    );
  }
}
