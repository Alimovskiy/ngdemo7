import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ngdemo7/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: [
          Locale('en', 'US'),
          Locale('ru', 'RU'),
          Locale('uz', 'UZ'),
          Locale('de', 'DE'),
          Locale('ar', 'DZ'),
          Locale('fr', 'FR'),
          Locale('es', 'ES'),
          Locale('ko', 'KR'),
          Locale('zh', 'CN'),
        ],
        path: 'assets/translations', // <-- change the path of the translation files
        fallbackLocale: Locale('en', 'US'),
        child: MyApp()
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        home: HomePage()
    );
  }
}