import 'package:burgerworld/screens/firstpage/screen_burger.dart';
import 'package:flutter/material.dart';

 void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.teal,centerTitle: true),
        bottomAppBarColor: Colors.teal,
        floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.orangeAccent),
      ),
      home:  Burger(),
      debugShowCheckedModeBanner: false,
      
    );
  }
}