import 'package:flutter/material.dart';
import 'package:my_project/Menu/body.dart';
import 'package:my_project/Widgets/main_screen/image_scan.dart';

class PetCarePage extends StatelessWidget {
  const PetCarePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _pet = [
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
    ];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.0),
        child: Body(text: 'Pet Care'),
      ),
      body: GridView.builder(
          itemCount: _pet.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Wrap(
                children: [_pet[index]],
              ),
            );
          }),
    );
  }
}
