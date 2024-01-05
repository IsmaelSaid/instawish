import 'package:flutter/material.dart';

void main() {
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
        body: Container(
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
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          shape: BoxShape.circle),
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: const CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage("assets/avatar.jpg"),
                      ),
                    ),
                    Text("User $i")
                  ],
                ),
            ],
          ),
        ),
      ),
    ),
  );
}
