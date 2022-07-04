import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:my_project/Widgets/onboarding/onboard_material_app.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboard extends StatefulWidget {
  const Onboard({Key? key}) : super(key: key);
  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  PageController controllers = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        PageView(
          controller: controllers,
          children: [
            Stack(
              children: [
                Container(
                    alignment: Alignment(0, 0.5),
                    child: TextWrapper(
                        text:
                            'Empowering Artisans,\n Farmers & Micro Business')),
                Container(height: 398, color: Color(0xFF33907C)), // обложка.

                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Image.asset('assets/images/Onboarding/one.png')],
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // images
                    children: [
                      Image.asset('assets/images/Onboarding/two.png'),
                    ],
                  ),
                ),

                Align(
                  alignment: Alignment(0, 0.93),
                  child: Button(
                    text: 'Next',
                    controller: controllers,
                  ),
                ),
              ],
            ),
            Container(
              child: Stack(
                children: [
                  Align(
                      alignment: Alignment(0, 0.5),
                      child: TextWrapper(
                        text:
                            'Connecting NGOs, Social\n Enterprises with Communities',
                      )),
                  Container(height: 398, color: Color(0xFF33907C)),
                  Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/Onboarding/onen.png'),
                        ]),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/Onboarding/twing.png')
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, 0.93),
                    child: Button(text: 'Next', controller: controllers),
                  ),
                ],
              ),
            ),
            Container(
              child: Stack(children: [
                Align(
                    alignment: Alignment(0, 0.5),
                    child: TextWrapper(
                      text:
                          'Donate, Invest & Support\n infrastructure projects',
                    )),
                Container(
                  color: Color(0xFF33907C),
                  height: 398,
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/Onboarding/Thrion.png'),
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/Onboarding/Thrio.png'),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment(0, 0.93),
                  child: Container(
                    child: Button(text: 'Finish', controller: controllers),
                  ),
                ),
              ]),
            )
          ],
        ),
        Container(
            alignment: Alignment(0, 0.7),
            child: SmoothPageIndicator(controller: controllers, count: 3))
      ]),
    );
  }
}
