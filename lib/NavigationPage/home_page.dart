import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_project/NavigationPage/browse_page.dart';
import 'package:my_project/NavigationPage/main_page.dart';
import 'package:my_project/NavigationPage/order_history_page.dart';
import 'package:my_project/NavigationPage/profile_page.dart';
import 'package:my_project/NavigationPage/store_page.dart';
import 'package:my_project/cust_icon_icons.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser;
  List page = [
    MainHome(),
    BrowsePage(),
    StorePage(),
    OrderPage(),
    ProfilePages()
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: page[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: Color(0xFF33907C),
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
                label: 'Home', icon: Icon(Icons.home_filled)),
            BottomNavigationBarItem(label: 'Browse', icon: Icon(Icons.search)),
            BottomNavigationBarItem(
                label: 'Store', icon: Icon(Icons.storefront)),
            BottomNavigationBarItem(
                label: 'Order History', icon: Icon(CustIcon.order)),
            BottomNavigationBarItem(
                label: 'Profile', icon: Icon(CustIcon.profile)),
          ],
        ));
  }
}
