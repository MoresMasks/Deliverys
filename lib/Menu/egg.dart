import 'package:flutter/material.dart';
import 'package:my_project/Widgets/main_screen/image_scan.dart';

import 'body.dart';

class EggPage extends StatelessWidget {
  EggPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _eggcategory = [
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
    ];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.0),
        child: Body(
          text: '     Egg',
        ),
      ),
      body: GridView.builder(
          itemCount: _eggcategory.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Wrap(
                children: [_eggcategory[index]],
              ),
            );
          }),
    );
  }
}
