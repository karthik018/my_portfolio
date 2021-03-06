import 'package:flutter/material.dart';
import 'app_icons.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Karthik Kumar',
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Karthik Kumar'),
            ),
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: ListView(
                      children: <Widget>[
                        Text(
                          'Karthik Kumar',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: 'RocknRoll'),
                        ),
                        Text(
                          'karthikkumar.mamidi@gmail.com',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'RocknRoll'),
                        )
                      ],
                    ),
                  ),
                  ListTile(
                    leading: Icon(MyFlutterApp.linkedin),
                    title: InkWell(
                      child: Text('LinkedIn'),
                      onTap: () => launch(
                          'https://www.linkedin.com/in/karthik-kumar-mamidi/'),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text('Profile'),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                  ),
                ],
              ),
            ),
            body: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(height: 30),
                    Container(
                        width: 250.0,
                        height: 250.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("images/Me.jpg")))),
                    SizedBox(height: 20),
                    Text(
                      "About",
                      style: TextStyle(fontFamily: 'RocknRoll', fontSize: 30),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Software Development Engineer II at FactSet",
                      style: TextStyle(fontSize: 24, fontFamily: 'RobotoSlab'),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                      child: Text(
                        "Experienced Back End Developer with a demonstrated history of working in the information technology and services industry. Skilled in Python, Flask, Django, OAuth, and Front-end Development. Strong engineering professional with a Bachelor of Technology - BTech focused in Computer Science from GMR Institute of Technology (GMRIT), GMR Nagar, Rajam, Srikakulam Dt.,-532127 (CC-34)). ",
                        style: TextStyle(fontFamily: 'Nunito', fontSize: 16),
                      ),
                    ),
                  ],
                )
              ],
            )));
  }
}
