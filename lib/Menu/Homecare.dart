import 'package:flutter/material.dart';
import 'package:my_project/Menu/body.dart';
import 'package:my_project/Widgets/main_screen/image_scan.dart';

class HomeCarPage extends StatelessWidget {
  const HomeCarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _care = [
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
    ];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.0),
        child: Body(text: ' Home Care'),
      ),
      body: GridView.builder(
          itemCount: _care.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Wrap(
                children: [_care[index]],
              ),
            );
          }),
    );
  }
}
