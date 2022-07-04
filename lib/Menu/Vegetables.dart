import 'package:flutter/material.dart';
import 'package:my_project/Menu/body.dart';
import 'package:my_project/Widgets/main_screen/image_scan.dart';

class Vegetables extends StatelessWidget {
  const Vegetables({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _vegetables = [
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
    ];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.0),
        child: Body(text: 'Vegetables'),
      ),
      body: GridView.builder(
          itemCount: _vegetables.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Wrap(
                children: [_vegetables[index]],
              ),
            );
          }),
    );
  }
}
