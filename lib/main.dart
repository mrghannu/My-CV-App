import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

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
                elevation: 2.0,
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
                        Text("Hello, I am Ghanashyam Ghimire. I define myself as an analytical and logical individual with great passion in computer programming. I had started my programming journey back from two years starting from Wordpress Development to all the way through Software Development and currently Web Development.", 
                        style:TextStyle(
                          fontSize: 14.0,
                          fontFamily: "NotoSans",
                        ),
                        ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.0,
                  top: 10.0,
                  bottom: 3.0,
                ),
                child: Text("Social Links", style: TextStyle(
                  fontSize: 20.0,
                   ),
                  ),
                 ),
                 Card(
                   elevation: 2.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: <Widget>[
                         IconButton(
                           onPressed: () {
                             launch("https://www.facebook.com/anonymousghannu");
                           },
                           color: Colors.blue,
                           icon: Icon(FontAwesomeIcons.facebook),
                         ),
                         IconButton(
                           onPressed: () {
                             launch("https://www.instagram.com/bi_bek_ghimire/");
                           },
                           color: Colors.red,
                           icon: Icon(FontAwesomeIcons.instagram),
                         ),
                         IconButton(
                           onPressed: () {
                             launch("https://twitter.com/Bibek___");
                           },
                           color: Colors.blueAccent,
                           icon: Icon(FontAwesomeIcons.twitter),
                         ),
                         IconButton(
                           onPressed: () {
                             launch("https://www.linkedin.com/in/ghanashyam-ghimire-947941193/");
                           },
                           color: Colors.blueGrey,
                           icon: Icon(FontAwesomeIcons.linkedin),
                         ),
                       ],
                   ),
                    ),
                 ),
                 Padding(
                padding: EdgeInsets.only(
                  left: 10.0,
                  top: 10.0,
                  bottom: 3.0,
                ),
                child: Text("Skills", style: TextStyle(
                  fontSize: 20.0,
                   ),
                  ),
                 ),

                 Card(
                   elevation: 2.0,
                   child: ListTile(
                     leading: CircleAvatar(
                       radius: 25.0,
                       backgroundImage: NetworkImage("https://www.reachfirst.com/wp-content/uploads/2018/08/Web-Development.jpg"),
                     ),
                     title: Text("Web devlopement"),
                     subtitle: Text("HTML, CSS, JavaScript"),
                   ),
                 ),
                 Card(
                   elevation: 2.0,
                   child: ListTile(
                     leading: CircleAvatar(
                       radius: 25.0,
                       backgroundImage: NetworkImage("https://sguru.org/wp-content/uploads/2019/07/App-Development.jpg"),
                     ),
                     title: Text("App devlopement"),
                     subtitle: Text("Dart & Flutter"),
                   ),
                 ),
                 SizedBox(
                   height: 10.0,
                 ),
                ],
              ),
      ),
    );
  }
}
  