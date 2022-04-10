import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverList(
        delegate: SliverChildListDelegate([
      Stack(
        children: [
          Column(children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              height: size.height / 6,
              width: size.width,
              decoration: const BoxDecoration(
                  color: Colors.teal,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(20)),
                  boxShadow: [BoxShadow(offset: Offset(0, 3), blurRadius: 5)]),
              child: Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.white70,
                        radius: 35,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("images/test1.jfif"),
                        ),
                      ),
                      SizedBox(width: size.width * 0.02),
                      Column(
                        children: [
                          const Text(
                            "sample user",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Text(
                              "basic user profile",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
          ]),
          
          Positioned(
              bottom: 0,
              child: Container(
                height: 50,
                width: size.width,
                child: Card(
                  margin: EdgeInsets.symmetric(horizontal: size.width * 0.06),
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "Search",
                      suffixIcon: Icon(Icons.search),
                      contentPadding: EdgeInsets.only(left: 20)) 
                    ),
                  ),
                ),
              )
        ],
      ),
    ]));
  }
}
