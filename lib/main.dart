import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sabitur_portfolio/utils/colors.dart';
import 'package:sabitur_portfolio/view/homepage/home_page.dart';
import 'package:sabitur_portfolio/view/project/project.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: Theme.of(context).copyWith(
          scaffoldBackgroundColor: Appcolor.kBackgroundColor,
          useMaterial3: true,
          textTheme: GoogleFonts.balooDa2TextTheme()),
      // home: Home_page(),
      initialRoute: "/",
      routes: {
        "/": (context) =>const  Home_page(),
        "/project": (context) =>const  Project_part()
      },
    );
  }
}
