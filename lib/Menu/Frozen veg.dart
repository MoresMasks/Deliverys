import 'package:flutter/material.dart';
import 'package:my_project/Widgets/main_screen/image_scan.dart';

import 'body.dart';

class FrozenVegPage extends StatelessWidget {
  const FrozenVegPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _frozen = [
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
    ];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.0),
        child: Body(text: 'Frozen veg'),
      ),
      body: GridView.builder(
          itemCount: _frozen.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Wrap(
                children: [_frozen[index]],
              ),
            );
          }),
    );
  }
}
