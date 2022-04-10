import 'package:flutter/material.dart';

class bottombar extends StatelessWidget {
  const bottombar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: Container(
        color: Colors.black38,
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Row(
            children: [
              Expanded(
                  child: IconButton(
                    color: Colors.white,
                      onPressed: () {}, icon: Icon(Icons.add_alert))),
              Expanded(
                  child:
                      IconButton(
                        color: Colors.white,onPressed: () {}, icon: Icon(Icons.turned_in)))
            ],
          ),
        ),
      ),
    );
  }
}