import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My CV App",
      theme: ThemeData(
        primarySwatch: Colors.blue, 
        ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:Text("My CV App"),
          ),
          body: ListView(
            children: <Widget>[
              Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0,
                  horizontal: 20.0,
                  ),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 50.0,
                        backgroundImage: AssetImage("assests/photo.jpeg"),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text("Ghanashyam Ghimire",
                        style: TextStyle(
                          fontSize: 25.0,
                        ),
                        ),
                        SizedBox(
                          height: 3.0,
                          ),
                        Text("App Developer", 
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16.0,
                          fontWeight:FontWeight.w600,
                        )
                        ),
                        SizedBox(
                          height: 7.0,
                          ),
                        Text("Hello, I am Ghanashyam Ghimire. I am a web plus app developer.", 
                        style:TextStyle(
                          fontSize: 14.0,
                        ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
            ),
      ),
    );
  }
}
  