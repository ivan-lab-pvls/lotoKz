import 'package:card_shark_app/model/result_item.dart';
import 'package:card_shark_app/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class CreateNewResultPage extends StatefulWidget {
  const CreateNewResultPage({super.key});

  @override
  State<CreateNewResultPage> createState() => _CreateNewResultPageState();
}

class _CreateNewResultPageState extends State<CreateNewResultPage> {
  ValueNotifier<int> page = ValueNotifier(0);
  TextEditingController textControllerSum = TextEditingController();
  TextEditingController textControllerQuantity = TextEditingController();
  EGame selectedGame = EGame.poker;
  EOpponents selectedOpponents = EOpponents.one;
  EStrategize selectedStrategize = EStrategize.aggressive;
  EBeginning selectedBeginning = EBeginning.novice;
  EBetting selectedBetting = EBetting.doubled;
  EFactor selectedFactor = EFactor.successful;
  EOutcome selectedOutcome = EOutcome.winning;
  bool isBluffing = false;
  List<EGame> gameTypes = [
    EGame.poker,
    EGame.baccarat,
    EGame.brag,
    EGame.badugi,
    EGame.five,
    EGame.more
  ];
  List<EOpponents> opponents = [
    EOpponents.one,
    EOpponents.two,
    EOpponents.three,
    EOpponents.four,
    EOpponents.five,
    EOpponents.more
  ];
  List<EStrategize> strategize = [
    EStrategize.aggressive,
    EStrategize.conservative,
    EStrategize.balanced,
    EStrategize.none
  ];
  List<EBeginning> beginnings = [
    EBeginning.novice,
    EBeginning.begginer,
    EBeginning.intermediate,
    EBeginning.advanced
  ];
  List<EBetting> bettings = [
    EBetting.doubled,
    EBetting.minimum,
    EBetting.raised
  ];
  List<EFactor> factors = [
    EFactor.successful,
    EFactor.winning,
    EFactor.underestimating,
    EFactor.idr
  ];
  List<EOutcome> outcomes = [EOutcome.winning, EOutcome.loss, EOutcome.draw];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 65, bottom: 16, left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      padding: const EdgeInsets.fromLTRB(12, 4, 12, 4),
                      decoration: BoxDecoration(
                          color: const Color(0xFFF8624F),
                          borderRadius: BorderRadius.circular(32)),
                      child: Image.asset('assets/arrow_back.png')),
                ),
                const Text(
                  'New analysis',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                const Text(
                  'analysis',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      color: Colors.transparent,
                      fontSize: 12,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '${page.value + 1}/9',
                          style: const TextStyle(
                              fontFamily: 'SF Pro Text',
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Row(
                              children: [
                                Flexible(
                                  child: Text(
                                    page.value == 0
                                        ? 'Game'
                                        : page.value == 1
                                            ? 'Opponents'
                                            : page.value == 2
                                                ? 'Strategize your game'
                                                : page.value == 3
                                                    ? 'Your bet'
                                                    : page.value == 4
                                                        ? 'Beginnig of the game'
                                                        : page.value == 5
                                                            ? 'Betting during the game'
                                                            : page.value == 6
                                                                ? 'Bluff'
                                                                : page.value ==
                                                                        7
                                                                    ? 'A major factor in the game'
                                                                    : 'The outcome of current game',
                                    style: const TextStyle(
                                        fontFamily: 'SF Pro Text',
                                        color: Color(0xFF278AEF),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (page.value == 0)
                    const Padding(
                      padding: EdgeInsets.only(
                          bottom: 8, top: 8, left: 16, right: 16),
                      child: Row(
                        children: [
                          Flexible(
                            child: Text(
                              'Select a game',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (page.value == 0) getGameVariants(),
                  if (page.value == 1)
                    const Padding(
                      padding: EdgeInsets.only(
                          bottom: 8, top: 8, left: 16, right: 16),
                      child: Row(
                        children: [
                          Flexible(
                            child: Text(
                              'How many opponents you have?',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (page.value == 1) getOpponents(),
                  if (page.value == 2)
                    const Padding(
                      padding: EdgeInsets.only(
                          bottom: 8, top: 8, left: 16, right: 16),
                      child: Row(
                        children: [
                          Flexible(
                            child: Text(
                              'What strategy did you use in this game?',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (page.value == 2) getStrategize(),
                  if (page.value == 3)
                    const Padding(
                      padding: EdgeInsets.only(
                          bottom: 8, top: 8, left: 16, right: 16),
                      child: Row(
                        children: [
                          Flexible(
                            child: Text(
                              'What bet did you place?',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (page.value == 3)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextField(
                        cursorColor: Colors.white,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        keyboardType: TextInputType.number,
                        style: const TextStyle(
                            fontFamily: 'SF Pro Text',
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                        controller: textControllerSum,
                        decoration: InputDecoration(
                          hintText: 'Sum',
                          hintStyle: TextStyle(
                              fontFamily: 'SF Pro Text',
                              color: Colors.white.withOpacity(0.4),
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.08),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  if (page.value == 4)
                    const Padding(
                      padding: EdgeInsets.only(
                          bottom: 8, top: 8, left: 16, right: 16),
                      child: Row(
                        children: [
                          Flexible(
                            child: Text(
                              'What cards did you have at the beginning of the game?',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (page.value == 4) getBeginnings(),
                  if (page.value == 5)
                    const Padding(
                      padding: EdgeInsets.only(
                          bottom: 8, top: 8, left: 16, right: 16),
                      child: Row(
                        children: [
                          Flexible(
                            child: Text(
                              'What bets did you place during the game?',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (page.value == 5)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: getBettings(),
                    ),
                  if (page.value == 6)
                    const Padding(
                      padding: EdgeInsets.only(
                          bottom: 8, top: 8, left: 16, right: 16),
                      child: Row(
                        children: [
                          Flexible(
                            child: Text(
                              'Were you bluffing?',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (page.value == 6)
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                      child: Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                isBluffing = !isBluffing;
                                setState(() {});
                              },
                              child: Container(
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    border: isBluffing
                                        ? Border.all(
                                            color: const Color(0xFF278AEF))
                                        : null,
                                    color: isBluffing
                                        ? const Color(0xFF278AEF)
                                            .withOpacity(0.4)
                                        : Colors.white.withOpacity(0.08)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Yes',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'SF Pro Text',
                                          color: isBluffing
                                              ? Colors.white
                                              : Colors.white.withOpacity(0.4),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    if (isBluffing)
                                      Image.asset('assets/check-bold.png')
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                isBluffing = !isBluffing;
                                setState(() {});
                              },
                              child: Container(
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    border: !isBluffing
                                        ? Border.all(
                                            color: const Color(0xFF278AEF))
                                        : null,
                                    color: !isBluffing
                                        ? const Color(0xFF278AEF)
                                            .withOpacity(0.4)
                                        : Colors.white.withOpacity(0.08)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'No',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'SF Pro Text',
                                          color: !isBluffing
                                              ? Colors.white
                                              : Colors.white.withOpacity(0.4),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    if (!isBluffing)
                                      Image.asset('assets/check-bold.png')
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  if (page.value == 6)
                    const Padding(
                      padding: EdgeInsets.only(bottom: 8, left: 16, right: 16),
                      child: Row(
                        children: [
                          Flexible(
                            child: Text(
                              'How many times?',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (page.value == 6)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextField(
                        cursorColor: Colors.white,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        keyboardType: TextInputType.number,
                        style: const TextStyle(
                            fontFamily: 'SF Pro Text',
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                        controller: textControllerQuantity,
                        decoration: InputDecoration(
                          hintText: 'Quantity',
                          hintStyle: TextStyle(
                              fontFamily: 'SF Pro Text',
                              color: Colors.white.withOpacity(0.4),
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.08),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  if (page.value == 7)
                    const Padding(
                      padding: EdgeInsets.only(
                          bottom: 8, top: 8, left: 16, right: 16),
                      child: Row(
                        children: [
                          Flexible(
                            child: Text(
                              'What were the main factors determining the outcome of this game?',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (page.value == 7)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: getFactors(),
                    ),
                  if (page.value == 8)
                    const Padding(
                      padding: EdgeInsets.only(
                          bottom: 8, top: 8, left: 16, right: 16),
                      child: Row(
                        children: [
                          Flexible(
                            child: Text(
                              'What is the outcome of this game?',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (page.value == 8) getOutcomes(),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
            child: InkWell(
              onTap: () {
                if ((page.value == 3 && textControllerSum.text.isEmpty)) {
                } else if ((page.value == 6 &&
                    textControllerQuantity.text.isEmpty)) {
                } else if (page.value < 8) {
                  page.value++;
                  setState(() {});
                } else if (page.value == 8) {
                  results.add(ResultItem());
                  addResult();
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

  Widget getGameVariants() {
    List<Widget> list = [];

    for (var game in gameTypes) {
      list.add(InkWell(
        onTap: () {
          selectedGame = game;
          setState(() {});
        },
        child: Container(
          width: 175,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: selectedGame == game
                  ? Border.all(color: const Color(0xFF278AEF))
                  : null,
              color: selectedGame == game
                  ? const Color(0xFF278AEF).withOpacity(0.4)
                  : Colors.white.withOpacity(0.08)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                game.text,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    color: selectedGame == game
                        ? Colors.white
                        : Colors.white.withOpacity(0.4),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              if (selectedGame == game) Image.asset('assets/check-bold.png')
            ],
          ),
        ),
      ));
    }
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: list,
    );
  }

  Widget getOpponents() {
    List<Widget> list = [];

    for (var opponent in opponents) {
      list.add(InkWell(
        onTap: () {
          selectedOpponents = opponent;
          setState(() {});
        },
        child: Container(
          width: 175,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: selectedOpponents == opponent
                  ? Border.all(color: const Color(0xFF278AEF))
                  : null,
              color: selectedOpponents == opponent
                  ? const Color(0xFF278AEF).withOpacity(0.4)
                  : Colors.white.withOpacity(0.08)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                opponent.text,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    color: selectedOpponents == opponent
                        ? Colors.white
                        : Colors.white.withOpacity(0.4),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              if (selectedOpponents == opponent)
                Image.asset('assets/check-bold.png')
            ],
          ),
        ),
      ));
    }
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: list,
    );
  }

  Widget getStrategize() {
    List<Widget> list = [];

    for (var strategy in strategize) {
      list.add(InkWell(
        onTap: () {
          selectedStrategize = strategy;
          setState(() {});
        },
        child: Container(
          width: 175,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: selectedStrategize == strategy
                  ? Border.all(color: const Color(0xFF278AEF))
                  : null,
              color: selectedStrategize == strategy
                  ? const Color(0xFF278AEF).withOpacity(0.4)
                  : Colors.white.withOpacity(0.08)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                strategy.text,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    color: selectedStrategize == strategy
                        ? Colors.white
                        : Colors.white.withOpacity(0.4),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              if (selectedStrategize == strategy)
                Image.asset('assets/check-bold.png')
            ],
          ),
        ),
      ));
    }
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: list,
    );
  }

  Widget getBeginnings() {
    List<Widget> list = [];

    for (var beginning in beginnings) {
      list.add(InkWell(
        onTap: () {
          selectedBeginning = beginning;
          setState(() {});
        },
        child: Container(
          width: 175,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: selectedBeginning == beginning
                  ? Border.all(color: const Color(0xFF278AEF))
                  : null,
              color: selectedBeginning == beginning
                  ? const Color(0xFF278AEF).withOpacity(0.4)
                  : Colors.white.withOpacity(0.08)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                beginning.text,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    color: selectedBeginning == beginning
                        ? Colors.white
                        : Colors.white.withOpacity(0.4),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              if (selectedBeginning == beginning)
                Image.asset('assets/check-bold.png')
            ],
          ),
        ),
      ));
    }
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: list,
    );
  }

  Widget getBettings() {
    List<Widget> list = [];

    for (var betting in bettings) {
      list.add(InkWell(
        onTap: () {
          selectedBetting = betting;
          setState(() {});
        },
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: selectedBetting == betting
                  ? Border.all(color: const Color(0xFF278AEF))
                  : null,
              color: selectedBetting == betting
                  ? const Color(0xFF278AEF).withOpacity(0.4)
                  : Colors.white.withOpacity(0.08)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                betting.text,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    color: selectedBetting == betting
                        ? Colors.white
                        : Colors.white.withOpacity(0.4),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              if (selectedBetting == betting)
                Image.asset('assets/check-bold.png')
            ],
          ),
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

  Widget getFactors() {
    List<Widget> list = [];

    for (var factor in factors) {
      list.add(InkWell(
        onTap: () {
          selectedFactor = factor;
          setState(() {});
        },
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: selectedFactor == factor
                  ? Border.all(color: const Color(0xFF278AEF))
                  : null,
              color: selectedFactor == factor
                  ? const Color(0xFF278AEF).withOpacity(0.4)
                  : Colors.white.withOpacity(0.08)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                factor.text,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    color: selectedFactor == factor
                        ? Colors.white
                        : Colors.white.withOpacity(0.4),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              if (selectedFactor == factor) Image.asset('assets/check-bold.png')
            ],
          ),
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

  Widget getOutcomes() {
    List<Widget> list = [];

    for (var outcome in outcomes) {
      list.add(InkWell(
        onTap: () {
          selectedOutcome = outcome;
          setState(() {});
        },
        child: Container(
          width: 175,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: selectedOutcome == outcome
                  ? Border.all(color: const Color(0xFF278AEF))
                  : null,
              color: selectedOutcome == outcome
                  ? const Color(0xFF278AEF).withOpacity(0.4)
                  : Colors.white.withOpacity(0.08)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                outcome.text,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    color: selectedOutcome == outcome
                        ? Colors.white
                        : Colors.white.withOpacity(0.4),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              if (selectedOutcome == outcome)
                Image.asset('assets/check-bold.png')
            ],
          ),
        ),
      ));
    }
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: list,
    );
  }
}
