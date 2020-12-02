import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'package:morse_translator/ThemePackage/AppStateNotifier.dart';
import 'package:provider/provider.dart';
import 'ThemePackage/AppTheme.dart';

void main() {
  runApp(
    // ignore: missing_required_param
    ChangeNotifierProvider<AppStateNotifier>(
      create: (context) => AppStateNotifier(),
      child: MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateNotifier>(
        builder: (context, appState, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            home: HomeApp(),
            themeMode: appState.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
          );
        }
    );
  }
}

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateNotifier>(
        builder: (context, appState, child) {
    return SplashScreen();
            /*initialRoute: '/',
            routes: {
              '/': (context) => SplashScreen(),
              '/homePage': (context) => HomePage(),
              '/TranslateMorsetoEnglish': (context) => TranslatorPage1(),
              '/historyPage': (context) => HistoryPage(),
              '/factsPage': (context) => FactsPage(),
              '/TranslateEnglishtoMorse': (context) => TranslatorPage2(),
              'Translations': (context) => TranslationInfo(),
            },*/
        }
    );
  }
}
