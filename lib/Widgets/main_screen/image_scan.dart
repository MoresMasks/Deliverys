import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../Menu/Beverages.dart';
import '../../Menu/Bread & Bakery.dart';
import '../../Menu/Frozen veg.dart';
import '../../Menu/Fruit.dart';
import '../../Menu/Homecare.dart';
import '../../Menu/PetCare.dart';
import '../../Menu/Vegetables.dart';
import '../../Menu/egg.dart';

class ImageScan extends StatelessWidget {
  final String image;
  final String text;
  final String prise;
  final String lastprise;
  final int routes;
  ImageScan(
      {Key? key,
      required this.image,
      required this.text,
      required this.prise,
      required this.lastprise,
      required this.routes})
      : super(key: key);

  List page = [
    BavaragesPage(),
    BreadPage(),
    EggPage(),
    FrozenVegPage(),
    FruitPage(),
    HomeCarPage(),
    PetCarePage(),
    Vegetables(),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () {
            final navigator = Navigator.of(context);
            navigator
                .push(MaterialPageRoute(builder: (context) => page[routes]));
          },
          child: Container(
            margin: EdgeInsets.only(
              top: 10,
            ),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                Container(width: 180, height: 140, child: Image.asset(image)),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Container(
                    width: 150,
                    height: 20,
                    child: Text(
                      text,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Container(
                  width: 180,
                  height: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 10),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Color(0xFF33907C),
                            ),
                            child: Center(
                              child: Text(
                                'T',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Tradly',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          if (prise != '')
                            Text('\$$prise',
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough)),
                          SizedBox(width: 10),
                          Container(
                            padding: EdgeInsets.only(right: 10),
                            child: Text(
                              '\$$lastprise',
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xFF33907C)),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
