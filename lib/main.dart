import 'package:flutter/material.dart';
import 'package:whats/screens/calls_screen.dart';
import 'package:whats/screens/chats_screen.dart';
import 'package:whats/screens/contacts_screen.dart';
import 'package:whats/util/custom_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(
        primaryColor: CustomColors().tealDarkGreen,
        accentColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.chat),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(labelStyle: TextStyle(fontSize: 16), tabs: [
            Tab(
              text: 'CALLS',
            ),
            Tab(
              text: 'CHATS',
            ),
            Tab(
              text: 'CONTACTS',
            ),
          ]),
        ),
        body: TabBarView(
          children: <Widget>[
            CallsScreen(),
            ChatsScreen(),
            ContactsScreen(),
          ],
        ),
      ),
    );
  }
}
