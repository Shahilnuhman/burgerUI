import 'package:burgerworld/screens/secondpage/bugerpage.dart';
import 'package:flutter/material.dart';

class hamburger extends StatelessWidget {
  hamburger({Key? key}) : super(key: key);

  Widget image1 = Container(
    height: 100,
    child: Image.asset("images/png1.png"),
  );
  Widget image2 = Container(
    height: 150,
    
    child: Image.asset("images/png2.png"),
  );
  Widget image3 = Container(
    height: 120,
    child: Image.asset("images/png3.png"),
  );
  Widget image4 = Container(
    child: Image.asset("images/png4"),
  );
  Widget image5 = Container(
    child: Image.asset("images/png0"),
  );

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Container(
            margin: EdgeInsets.only(top: 10),
            height: 240,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        width: 150,
                        height: 180,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => burgerpage()));
                          },
                          child: Card(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(45),
                                  topLeft: Radius.circular(45),
                                  topRight: Radius.circular(45),
                                  bottomRight: Radius.circular(15)),
                            ),
                            elevation: 10,
                            color: Colors.teal,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  const Text(
                                    "burger",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  const Spacer(),
                                  Row(
                                    children: const [
                                      Spacer(),
                                      Text(
                                        "rate",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Spacer(),
                                      Card(
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.teal,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: index.isEven?50:40,
                         child: index.isEven ? image1 : image3)
                    ],
                  );
                })));
  }
}
