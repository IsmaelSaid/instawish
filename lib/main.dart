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
            actions:  [
              const Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/avatar.jpg"),
                ),
              ),
              TextButton(
                child: const Icon(Icons.add_box, color: Colors.white),
                onPressed: (){}
              ),
            ],
            backgroundColor: Colors.cyan[300]),
      ),
    ),
  );
}
