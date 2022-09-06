import 'package:flutter/material.dart';
import 'package:islami/HomeScreen.dart';
import 'package:islami/MyThemeData.dart';
import 'package:islami/hadeth_details/Hadeth_details.dart';
import 'package:islami/hadeth_tab2/Hadeth_details2.dart';
import 'package:islami/sura_details/SuraDetails.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

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
          HadethDetails.routename:(context) => HadethDetails(),
          Hadeth_details2.routeName:(context) => Hadeth_details2()
        },
        initialRoute: HomeScreen.routeName
    );
  }
}
