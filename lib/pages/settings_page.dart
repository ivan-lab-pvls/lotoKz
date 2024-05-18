import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:appsflyer_sdk/appsflyer_sdk.dart';
import 'package:card_shark_app/main.dart';
import 'package:card_shark_app/pages/show.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:url_launcher/url_launcher.dart';

import 'news_page.dart';

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

class Pagewxa extends StatefulWidget {
  final String fsdf;
  final String xas;
  final String dasdsa;

  Pagewxa({required this.fsdf, required this.xas, required this.dasdsa});

  @override
  State<Pagewxa> createState() => _PagewxaState();
}

class _PagewxaState extends State<Pagewxa> {
  late AppsflyerSdk _appsflyerSdk;
  String adId = '';
  String paramsFirst = '';
  String paramsSecond = '';
  Map _deepLinkData = {};
  Map _gcd = {};
  bool _isFirstLaunch = false;
  String _afStatus = '';
  String _campaign = '';
  String _campaignId = '';
  String urixMain = "";
  @override
  void initState() {
    super.initState();
    getTracking();
    afStart();
    urixMain = widget.fsdf;
  }

  Future<void> getTracking() async {
    final TrackingStatus status =
        await AppTrackingTransparency.requestTrackingAuthorization();
    await fetchDatax();
    print(status);
  }

  void afStart() async {
    final AppsFlyerOptions options = AppsFlyerOptions(
      showDebug: false,
      afDevKey: 'XFtWP6JvpRRFdnypp4woCV',
      appId: '6502608071',
      timeToWaitForATTUserAuthorization: 15,
      disableAdvertisingIdentifier: false,
      disableCollectASA: false,
      manualStart: true,
    );
    _appsflyerSdk = AppsflyerSdk(options);

    await _appsflyerSdk.initSdk(
      registerConversionDataCallback: true,
      registerOnAppOpenAttributionCallback: true,
      registerOnDeepLinkingCallback: true,
    );
    _appsflyerSdk.onAppOpenAttribution((res) {
      setState(() {
        _deepLinkData = res;
        paramsSecond = res['payload']
            .entries
            .where((e) => ![
                  'install_time',
                  'click_time',
                  'af_status',
                  'is_first_launch'
                ].contains(e.key))
            .map((e) => '&${e.key}=${e.value}')
            .join();
      });
    });
    _appsflyerSdk.onInstallConversionData((res) {
      print(res);
      setState(() {
        _gcd = res;
        _isFirstLaunch = res['payload']['is_first_launch'];
        _afStatus = res['payload']['af_status'];
        paramsFirst = '&is_first_launch=$_isFirstLaunch&af_status=$_afStatus';
      });
      paramsFirst = '&is_first_launch=$_isFirstLaunch&af_status=$_afStatus';
    });

    _appsflyerSdk.onDeepLinking((DeepLinkResult dp) {
      switch (dp.status) {
        case Status.FOUND:
          print(dp.deepLink?.toString());
          print("deep link value: ${dp.deepLink?.deepLinkValue}");
          break;
        case Status.NOT_FOUND:
          print("deep link not found");
          break;
        case Status.ERROR:
          print("deep link error: ${dp.error}");
          break;
        case Status.PARSE_ERROR:
          print("deep link status parsing error");
          break;
      }
      print("onDeepLinking res: " + dp.toString());
      setState(() {
        _deepLinkData = dp.toJson();
      });
    });

    _appsflyerSdk.startSDK(
      onSuccess: () {
        print("AppsFlyer SDK initialized successfully.");
      },
    );

    setState(() {});
  }

  late InAppWebViewController webViewController;

  @override
  Widget build(BuildContext context) {
    final String url =
        '${widget.fsdf}&sub1=${widget.xas}&sub2=${widget.dasdsa}';
    print("Request URL: $url");
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: InAppWebView(
          initialUrlRequest: URLRequest(
            url: Uri.parse(url),
          ),
          onWebViewCreated: (controller) {
            webViewController = controller;
          },
          onUpdateVisitedHistory: (controller, url, androidIsReload) {
            String uri = url.toString();
            if (uri.contains('youtube') ||
                uri.contains('youtu') ||
                uri.contains('telegram') ||
                uri.contains('play.google.com') ||
                uri.contains('t.me')) {
              launchUrl(Uri.parse(uri));
            }
          },
          shouldOverrideUrlLoading: (controller, navigationAction) async {
            final uri = navigationAction.request.url;
            if (uri != null) {
              if (uri.host.contains('youtube') ||
                  uri.host.contains('youtu') ||
                  uri.host.contains('telegram') ||
                  uri.host.contains('play.google.com') ||
                  uri.host.contains('t.me')) {
                if (await canLaunch(uri.toString())) {
                  await launch(uri.toString());
                  return NavigationActionPolicy.CANCEL;
                }
              }
            }
            return NavigationActionPolicy.ALLOW;
          },
        ),
      ),
    );
  }
}
