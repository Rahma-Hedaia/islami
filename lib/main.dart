import 'package:flutter/material.dart';
import 'package:islami/HomeScreen.dart';
import 'package:islami/MyThemeData.dart';
import 'package:islami/hadeth_tab/Hadeth_details.dart';
import 'package:islami/sura_details/SuraDetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: MyThemeData.lightMode,
        darkTheme: MyThemeData.darkMode,
        routes: {
          HomeScreen.routeName:(context) => HomeScreen(),
          SuraDetails.routeName:(context) => SuraDetails(),
          HadethDetails.routename:(context) => HadethDetails()
        },
        initialRoute: HomeScreen.routeName
    );
  }
}
