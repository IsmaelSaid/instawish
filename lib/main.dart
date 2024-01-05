import 'package:flutter/material.dart';
import 'package:instawish/components/user_avatar.dart';

void main() {
  var filename = "avatar.jpg";
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            leading: const Icon(Icons.add_box, color: Colors.white),
            title: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage("assets/icon.png"), height: 30),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text("instawish",
                        style: TextStyle(color: Colors.white)),
                  ),
                ]),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: CircleAvatar(
                    backgroundImage: AssetImage("assets/avatar.jpg")),
              ),
            ],
            backgroundColor: Colors.cyan[300]),
        body: Column(
          children: [
            Container(
              height: 100,
              color: Colors.black12,
              margin: const EdgeInsets.only(top: 10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (var i = 0; i < 5; i++)
                    Column(
                      children: [
                        UserAvatar(filename: filename, border: false),
                        Text("User $i")
                      ],
                    ),
                ],
              ),
            ),
            SizedBox(
              width: 500,
              height: 200,
              child: Stack(children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(top: 10, left: 50),
                  width: 400,
                  deco
                  ration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 15,
                        offset: const Offset(0.0, 0.75),
                      ),
                    ],
                    border: Border.all(
                      color: Colors.grey.shade200,
                      width: 2,
                    ),
                  ),
                  child: Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: const Text("username")),
                ),
                const Positioned(
                  left: -10,
                  child: UserAvatar(filename: "avatar.jpg", border: true),
                ),
              ]),
            )
          ],
        ),
      ),
    ),
  );
}
