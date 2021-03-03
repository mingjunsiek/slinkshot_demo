import 'package:flutter/material.dart';
import 'package:slinkshot_demo/screens/homepage.dart';
import 'package:slinkshot_demo/utils/constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Slinkshot Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: kPrimaryColor,
        primaryColor: kPrimaryColor,
        accentColor: kSecondaryColor,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: kTextColor),
          bodyText2: TextStyle(color: kTextColor),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          backgroundColor: kPrimaryColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: kNavItemSelected,
          unselectedItemColor: kIconColor,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
