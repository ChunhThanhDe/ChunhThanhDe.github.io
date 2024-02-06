import 'package:bot_toast/bot_toast.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:g_recaptcha_v3/g_recaptcha_v3.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:profile/ui/desktop/desktop_body.dart';
import 'package:profile/ui/mobile/mobile_body.dart';
import 'package:profile/ui/tablet/tablet_body.dart';
import 'package:profile/widgets/responsive_layout.dart';
import 'package:url_strategy/url_strategy.dart';

import 'generated/translations.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.useDeviceLocale();
  Intl.defaultLocale = WidgetsBinding.instance.platformDispatcher.locale.languageCode;
  await initializeDateFormatting('en');
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: 'AIzaSyBVvURh_Ar9VTVFKndo8jmSb6kvfpcdqrU',
      appId: '1:1085560411698:web:c68e93989663d01cca0e2b',
      messagingSenderId: '1085560411698',
      projectId: 'personal-profile-project-be477',
      authDomain: 'personal-profile-project-be477.firebaseapp.com',
      databaseURL: 'https://personal-profile-project-be477-default-rtdb.asia-southeast1.firebasedatabase.app',
      storageBucket: 'personal-profile-project-be477.appspot.com',
      measurementId: 'G-YBXX3M3NVY',
    ),
  );
  // await FirebaseAppCheck.instance.activate(
  //   webProvider: ReCaptchaV3Provider('6LcAWWgpAAAAAGif1NuIexctX-DBevZGz7C7fBjq'),
  //   androidProvider: AndroidProvider.debug,
  //   appleProvider: AppleProvider.appAttest,
  // );

  // if (kIsWeb) {
  //   bool ready = await GRecaptchaV3.ready("6LcAWWgpAAAAAGif1NuIexctX-DBevZGz7C7fBjq", showBadge: true); //--2
  //   print("Is Recaptcha ready? $ready");
  // }

  setPathUrlStrategy();
  runApp(TranslationProvider(child: const profile()));
}

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ChunhThanhDe | Software Engineer',
      builder: BotToastInit(),
      navigatorObservers: [BotToastNavigatorObserver()],
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Poppins',
        brightness: Brightness.dark,
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black.withOpacity(0),
        ),
      ),
      home: ResponsiveLayout(
        tabletBody: const TabletBody(),
        desktopBody: const DesktopBody(),
        mobileBody: MobileBody(),
      ),
    );
  }
}
