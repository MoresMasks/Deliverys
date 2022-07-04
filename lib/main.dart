import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_project/NavigationPage/main_page.dart';
import 'package:my_project/Widgets/auth/auth_page.dart';
import 'package:my_project/Widgets/auth/auth_widget.dart';
import 'package:my_project/Widgets/auth/profile_page_register.dart';
import 'package:my_project/Widgets/onboarding/onboard.dart';
import 'package:onboarding/onboarding.dart';
import 'NavigationPage/home_page.dart';
import 'package:firebase_core/firebase_core.dart';

import 'Widgets/auth/main_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(debugShowCheckedModeBanner: false, home: MainPage());
  }
}
