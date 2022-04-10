import 'package:flutter/material.dart';

class burgerpage extends StatefulWidget {
  const burgerpage({ Key? key }) : super(key: key);

  @override
  State<burgerpage> createState() => _burgerpageState();
}

class _burgerpageState extends State<burgerpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.home), onPressed: () {
          Navigator.pop(context);
          }),
        title: Text("Burger"),),
      body: Center(
        child: Text('burger'),)
      
    );
  }
}