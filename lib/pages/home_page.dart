import 'dart:convert';

import 'package:card_shark_app/model/result_item.dart';
import 'package:card_shark_app/pages/create_new_result_page.dart';
import 'package:card_shark_app/pages/news_page.dart';
import 'package:card_shark_app/pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

List<ResultItem> results = [];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    getResult(
      () {
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 65, 16, 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Flexible(
                  child: Text(
                    'Poker chance',
                    style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const SettingsPage()),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                    decoration: BoxDecoration(
                        color: const Color(0xFFF8624F),
                        borderRadius: BorderRadius.circular(16)),
                    child: const Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                          builder: (BuildContext context) => const NewsPage()),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                    decoration: BoxDecoration(
                        color: const Color(0xFFF8624F),
                        borderRadius: BorderRadius.circular(16)),
                    child: const Icon(
                      Icons.newspaper,
                      color: Colors.white,
                    ),
                    // Image.asset(
                    //   'assets/news.png',
                    //   color: Colors.white,
                    // )
                  ),
                )
              ],
            ),
          ),
          if (results.isNotEmpty)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
              child: Row(
                children: [
                  Text(
                    'Your result',
                    style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        color: Colors.white.withOpacity(0.4),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          Expanded(
            child: results.isNotEmpty
                ? SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [getResults()],
                      ),
                    ),
                  )
                : SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.08),
                                borderRadius: BorderRadius.circular(16)),
                            child: Column(
                              children: [
                                Image.asset('assets/home.png'),
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(16, 8, 16, 4),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Flexible(
                                        child: Text(
                                          'Start analyzing your victories',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: 'SF Pro Text',
                                              color: Colors.white,
                                              fontSize: 24,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(16, 0, 16, 16),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Flexible(
                                        child: Text(
                                          'Analyze your successes and keep track of victories according to various parameters.',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: 'SF Pro Text',
                                              color:
                                                  Colors.white.withOpacity(0.4),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute<void>(
                                          builder: (BuildContext context) =>
                                              const CreateNewResultPage()),
                                    );
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.all(16),
                                    decoration: BoxDecoration(
                                        color: const Color(0xFFF8624F),
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    child: const Text(
                                      'Start',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'SF Pro Text',
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
          ),
          if (results.isNotEmpty)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const CreateNewResultPage()),
                  );
                },
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: const Color(0xFFF8624F),
                      borderRadius: BorderRadius.circular(16)),
                  child: const Text(
                    'New analysis',
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

  Widget getResults() {
    List<Widget> list = [];
    for (var result in results) {
      list.add(Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.08),
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          children: [
            Image.asset('assets/result.png'),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 8, 0, 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Text(
                      'Experienced player',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Text(
                      'You have a balanced style. You flexibly adapt to different situations in the game.',
                      textAlign: TextAlign.start,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  child: Text(
                    'You skillfully use bluffs and manage bets depending on the combination of cards, most likely have a good strategic foundation.',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        color: Colors.white.withOpacity(0.4),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ],
        ),
      ));
      list.add(const SizedBox(
        height: 8,
      ));
    }
    return Column(
      children: list,
    );
  }
}

Future<void> addResult() async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setString('results', jsonEncode(results));
}

void getResult(Function() callBack) async {
  final prefs = await SharedPreferences.getInstance();

  final List<dynamic> jsonData1 =
      jsonDecode(prefs.getString('results') ?? '[]');

  results = jsonData1.map<ResultItem>((jsonList) {
    {
      return ResultItem.fromJson(jsonList);
    }
  }).toList();

  callBack();
}
