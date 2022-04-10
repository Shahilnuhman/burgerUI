import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  int currentselectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
          
  
          height: MediaQuery.of(context).size.height / 5,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
            return Stack(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10,top: 10),
                      height: 90,
                      width: 90,
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          currentselectedindex = index;
                        });
                      },
                      child: Card(
                        margin: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 5,
                        child: Icon(
                          Icons.shopping_bag,
                          color:currentselectedindex==index?Colors.white: Colors.teal,),
                           color: currentselectedindex==index? Colors.teal:Colors.white,
                      ),
                    ),),
                    Text("Burger"),
                  ],
                )
              ],
            );
          })),
    );
  }
}
