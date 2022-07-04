import 'package:flutter/material.dart';
import 'package:my_project/Widgets/main_screen/image_scan.dart';

import 'body.dart';

class FruitPage extends StatelessWidget {
  const FruitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _fruit = [
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
    ];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.0),
        child: Body(text: '    Fruit'),
      ),
      body: GridView.builder(
          itemCount: _fruit.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Wrap(
                children: [_fruit[index]],
              ),
            );
          }),
    );
  }
}
