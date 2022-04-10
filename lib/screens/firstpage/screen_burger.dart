import 'package:burgerworld/screens/firstpage/categories.dart';
import 'package:burgerworld/screens/firstpage/hamburger.dart';
import 'package:burgerworld/widgets/bottom.dart';
import 'package:burgerworld/widgets/header.dart';
import 'package:flutter/material.dart';

class Burger extends StatefulWidget {
  const Burger({Key? key}) : super(key: key);

  @override
  State<Burger> createState() => _BurgerState();
}

class _BurgerState extends State<Burger> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: CustomScrollView(slivers: [
          SliverAppBar(
            pinned: true,
            title: const Text('Burger'),
            leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
            actions: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.shopping_cart))
            ],
          ),
          Header(),
          Categories(),
          hamburger(),
          hamburger()
         
        ]),
        extendBody: true,
         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
         
          onPressed: () {},
          child: Icon(Icons.home),
        ),
        bottomNavigationBar: bottombar(),
      ),
    );
  }
}


