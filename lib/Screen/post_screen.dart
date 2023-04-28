import 'dart:math';

import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  int headname=2;
  int subname=3;
  int pback=0;
  int bigc=1;
  int fontstyle=7;
  List<Color> mycolor = [
    Color(0xffCE1C2C),
    Color(0xff0F1342),
    Colors.white,
    Colors.black,
    Colors.red,
    Colors.amber,
    Colors.green,
    Colors.teal,
    Colors.indigo,
    Colors.blue,
    Colors.yellow,
    Colors.brown,
    Colors.pink,
    Colors.orange,
    Colors.purple,
    Colors.purpleAccent,
    Colors.grey,
    Colors.lightBlueAccent,
    Colors.cyanAccent,
    Colors.lightGreenAccent,
    Colors.blueGrey,
    Colors.deepOrangeAccent,
  ];
  List font = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'g',
    'h',
    'i',
    'k',
    'l',
    'm',
    'n',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffCE1C2C),
        centerTitle: true,
        title: Text(
          "Photo Editer",
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1,
          ),
        ),
        leading: Icon(
          Icons.photo,
          color: Colors.white,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
                onTap: () {},
                child: Icon(
                  Icons.done,
                  color: Colors.white,
                )),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 300,
                        width: 350,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(color: mycolor[pback], width: 2)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/bk.png",
                              height: 70,
                              width: 70,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 30),
                                  Text(
                                    "BUILDING THE FUTURE,",
                                    style:
                                        TextStyle(fontFamily : font[fontstyle],fontSize: 20, letterSpacing: 1,color: mycolor[subname]),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "ONE LINE OF CODE AT A TIME",
                                    style:
                                        TextStyle(fontFamily : font[fontstyle],fontSize: 20, letterSpacing: 1,color: mycolor[subname]),
                                  ),
                                  SizedBox(height: 20),
                                  Row(
                                    children: [
                                      Image.asset("assets/images/instagram.png",
                                          height: 15, width: 15),
                                      SizedBox(width: 10),
                                      Text(
                                        "@bkhush_312",
                                        style: TextStyle(
                                            letterSpacing: 1,
                                            fontSize: 15,
                                            fontFamily : font[fontstyle],
                                            color: mycolor[subname]),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  Container(
                                    height: 40,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        color: mycolor[pback],
                                        borderRadius: BorderRadius.circular(10)),
                                    child: Center(
                                      child: Text(
                                        "Hire me",
                                        style: TextStyle(
                                            letterSpacing: 1,
                                            fontSize: 20,
                                            fontFamily : font[fontstyle],
                                            color: mycolor[headname]),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 300,
                        width: 150,
                        decoration: BoxDecoration(
                            color: mycolor[bigc],
                            border:
                                Border.all(color: mycolor[pback], width: 2)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 150),
                              Text(
                                "HELLO!",
                                style: TextStyle(
                                    letterSpacing: 1,
                                    fontFamily : font[fontstyle],
                                    color: mycolor[headname],
                                    fontSize: 15),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "I 'M EMMA",
                                style: TextStyle(
                                    letterSpacing: 1,
                                    fontFamily : font[fontstyle],
                                    color: mycolor[headname],
                                    fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment(0.50, 0),
                    child: Transform.rotate(
                      angle: pi / 4,
                      child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(color: mycolor[pback]),
                        child: Transform.rotate(
                            angle: 5.5,
                            child: CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/1.jpg"))),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Text("Name",style: TextStyle(letterSpacing: 1,fontSize: 15),),
              SizedBox(height: 7),
              SizedBox(
                height: 30,width: double.infinity,
                child: ListView.builder(scrollDirection: Axis.horizontal,itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      headname=index;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 3),
                    height: 30,width: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black),
                      color: mycolor[index]
                    ),
                  ),
                );
                },itemCount: mycolor.length,),
              ),
              SizedBox(height: 7),
              Text("Subtitle",style: TextStyle(letterSpacing: 1,fontSize: 15),),
              SizedBox(height: 7),
              SizedBox(
                height: 30,width: double.infinity,
                child: ListView.builder(scrollDirection: Axis.horizontal,itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        subname=index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 3),
                      height: 30,width: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black),
                          color: mycolor[index]
                      ),
                    ),
                  );
                },itemCount: mycolor.length,),
              ),
              SizedBox(height: 7),
              Text("Photo Background & Border",style: TextStyle(letterSpacing: 1,fontSize: 15),),
              SizedBox(height: 7),
              SizedBox(
                height: 30,width: double.infinity,
                child: ListView.builder(scrollDirection: Axis.horizontal,itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        pback=index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 3),
                      height: 30,width: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black),
                          color: mycolor[index]
                      ),
                    ),
                  );
                },itemCount: mycolor.length,),
              ),
              SizedBox(height: 7),
              Text("Background",style: TextStyle(letterSpacing: 1,fontSize: 15),),
              SizedBox(height: 7),
              SizedBox(
                height: 30,width: double.infinity,
                child: ListView.builder(scrollDirection: Axis.horizontal,itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        bigc=index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 3),
                      height: 30,width: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black),
                          color: mycolor[index]
                      ),
                    ),
                  );
                },itemCount: mycolor.length,),
              ),
              SizedBox(height: 7),
              Text("Font Style",style: TextStyle(letterSpacing: 1,fontSize: 15),),
              SizedBox(height: 7),
              SizedBox(
                height: 30,width: double.infinity,
                child: ListView.builder(scrollDirection: Axis.horizontal,itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        fontstyle=index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 3),
                      height: 30,width: 50,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5),
                          color: mycolor[2]
                      ),
                      child: Center(
                        child: Text("ABC",style: TextStyle(
                          letterSpacing: 1,fontFamily: font[index],fontSize: 10
                        ),),
                      ),
                    ),
                  );
                },itemCount: font.length),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
