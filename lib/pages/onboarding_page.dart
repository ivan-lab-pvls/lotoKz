import 'package:card_shark_app/pages/home_page.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  ValueNotifier<int> page = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                if (page.value == 0)
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 65, 26, 0),
                    child: Image.asset('assets/onboarding1.png'),
                  ),
                if (page.value == 1)
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 65, 26, 0),
                    child: Image.asset('assets/onboarding2.png'),
                  ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ValueListenableBuilder(
                        valueListenable: page,
                        builder: (context, index, child) => DotsIndicator(
                          dotsCount: 2,
                          position: page.value,
                          decorator: DotsDecorator(
                            size: const Size(40.0, 8.0),
                            activeSize: const Size(40.0, 8.0),
                            spacing: const EdgeInsets.all(3),
                            activeColor: const Color(0xFF278AEF),
                            color: Colors.white.withOpacity(0.14),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            activeShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                if (page.value == 0)
                  const Padding(
                    padding: EdgeInsets.fromLTRB(16, 0, 16, 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(
                            'Discover Your Poker Style',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'SF Pro Text',
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w700),
                          ),
                        )
                      ],
                    ),
                  ),
                if (page.value == 0)
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(
                            'Understand your strengths, compare results, and become the best player at the table.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'SF Pro Text',
                                color: Colors.white.withOpacity(0.4),
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                if (page.value == 1)
                  const Padding(
                    padding: EdgeInsets.fromLTRB(16, 0, 16, 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(
                            'Revolutionize Your Poker Gameplay',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'SF Pro Text',
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w700),
                          ),
                        )
                      ],
                    ),
                  ),
                if (page.value == 1)
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(
                            'Get an in-depth analysis of your playing style and expert recommendations to reach new heights',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'SF Pro Text',
                                color: Colors.white.withOpacity(0.4),
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
            child: InkWell(
              onTap: () {
                if (page.value == 0) {
                  page.value = 1;
                  setState(() {});
                } else if (page.value == 1) {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) => const HomePage()),
                  );
                }
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: const Color(0xFFF8624F),
                    borderRadius: BorderRadius.circular(16)),
                child: const Text(
                  'Next',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
