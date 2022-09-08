import 'package:flutter/material.dart';

void main() {
  runApp(Full());
}

class Full extends StatefulWidget {
  const Full({super.key});

  @override
  State<Full> createState() => _FullState();
}

class _FullState extends State<Full> {
  Color mycolor = Colors.greenAccent;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Container(
            color: mycolor,
            child: Center(
                child: Column(
              children: [
                Row(children: [
                  Text("option #1",style: TextStyle(fontSize: 30),),
                  SizedBox(width: 40,),
                  Image(image: AssetImage("images/1.png")),
                  Column(
                    children: [
                      Icon(Icons.laptop),
                      Icon(Icons.laptop),
                      Icon(Icons.laptop),
                    ],
                  )
                ]),
                SizedBox(height: 30,),
                Row(children: [
                  Text("option #2",style: TextStyle(fontSize: 30),),
                  SizedBox(width: 30,),
                  Column(
                    children: [
                      Icon(Icons.laptop),
                      Icon(Icons.laptop),
                      Icon(Icons.laptop),
                    ],
                  ),
                  Image(image: AssetImage("images/2.png")),
                ]),
                SizedBox(height: 30,),
                Row(children: [
                  Text("option #3",style: TextStyle(fontSize: 30),),
                  SizedBox(width: 30,),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.laptop),
                          Icon(Icons.laptop),
                          Icon(Icons.laptop),
                        ],
                      ),
                      Image(image: AssetImage("images/3.png")),
                    ],
                  ),
                ]),
                SizedBox(height: 30,),
                Row(children: [
                  Text("option #4",style: TextStyle(fontSize: 30),),
                  SizedBox(width: 30,),
                  Column(
                    children: [
                      Image(image: AssetImage("images/4.png")),
                      Row(
                        children: [
                          Icon(Icons.laptop),
                          Icon(Icons.laptop),
                          Icon(Icons.laptop),
                        ],
                      ),
                    ],
                  ),
                ]),
                SizedBox(height: 30,),
                Row(
                  children: [
                    SizedBox(width: 35,),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            mycolor = Color.fromARGB(255, 195, 75, 216);
                          });
                        },
                        child: Text("purble")),
                        SizedBox(width: 30,),
                        ElevatedButton(
                        onPressed: () {
                          setState(() {
                            mycolor = Color.fromARGB(255, 202, 216, 75);
                          });
                        },
                        child: Text("yallow")),
                        SizedBox(width: 30,),
                        ElevatedButton(
                        onPressed: () {
                          setState(() {
                            mycolor = Color.fromARGB(255, 198, 36, 179);
                          });
                        },
                        child: Text("pink")),
                        SizedBox(width: 30,),
                        ElevatedButton(
                        onPressed: () {
                          setState(() {
                            mycolor = Color.fromARGB(255, 75, 171, 216);
                          });
                        },
                        child: Text("blue")),
                  ],
                )
              ],
            )),
          ),
        ),
      ),
    );
  }
}
