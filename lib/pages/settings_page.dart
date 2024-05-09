import 'package:card_shark_app/pages/show.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({
    super.key,
  });
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
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
                'Settings',
                style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              const Text(
                'Settings',
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.08),
                          borderRadius: BorderRadius.circular(16)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Image.asset('assets/settings.png'),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(16, 10, 16, 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Flexible(
                                        child: Text(
                                          'Give us 5 star',
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                              fontFamily: 'SF Pro Text',
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(16, 0, 16, 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Flexible(
                                        child: Text(
                                          'Your feedback helps us to improve',
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                              fontFamily: 'SF Pro Text',
                                              color:
                                                  Colors.white.withOpacity(0.4),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(8, 13, 8, 13),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.06),
                        borderRadius: BorderRadius.circular(16)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        const Readaed(
                                          link:
                                              'https://docs.google.com/document/d/1lQl6DQulRweMpwaAaNHinJLEItVa0Y90jbVJUkAF7ds/edit?usp=sharing',
                                        )),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/terms.png'),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      'Terms of use',
                                      style: TextStyle(
                                          fontFamily: 'SF Pro Text',
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.chevron_right,
                                  color: Colors.white.withOpacity(0.4),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 13, 10, 13),
                            child: Divider(
                              color: Colors.white.withOpacity(0.08),
                              height: 1,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        const Readaed(
                                          link:
                                              'https://docs.google.com/document/d/13Em0c_vKmy8PoVMkQ_cVAX_ZOz8bnigevY3hO39Hg8c/edit?usp=sharing',
                                        )),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/privacy.png'),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      'Privacy policy',
                                      style: TextStyle(
                                          fontFamily: 'SF Pro Text',
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.chevron_right,
                                  color: Colors.white.withOpacity(0.4),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 13, 10, 13),
                            child: Divider(
                              color: Colors.white.withOpacity(0.08),
                              height: 1,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        const Readaed(
                                          link:
                                              'https://forms.gle/baJVXPyidD92ZFYu5',
                                        )),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/support.png'),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      'Support page',
                                      style: TextStyle(
                                          fontFamily: 'SF Pro Text',
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.chevron_right,
                                  color: Colors.white.withOpacity(0.4),
                                )
                              ],
                            ),
                          ),
                        ]),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
