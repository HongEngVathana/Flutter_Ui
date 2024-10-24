import 'package:flutter/material.dart';
import 'package:flutter_ui/constats/color.dart';
import 'package:flutter_ui/constats/constants.dart';
import 'package:flutter_ui/dashboard/welcome.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: MyColors.navy,
          brightness: Brightness.light,
          scaffoldBackgroundColor: const Color(0xfffcfcfc),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            elevation: .2,
            titleTextStyle:
                TextStyle(fontFamily: Bold, color: Color(0xff323232)),
          )),
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: MyColors.navy,
          scaffoldBackgroundColor: const Color(0xfffcfcfc),
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              elevation: .2,
              titleTextStyle:
                  TextStyle(fontFamily: Bold, color: Color(0xff323232)))),
      home: welcomeScreen(),
    );
  }
}
