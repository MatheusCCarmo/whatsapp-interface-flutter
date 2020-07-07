import 'package:flutter/material.dart';
import 'package:whats/screens/calls_screen.dart';
import 'package:whats/screens/chats_screen.dart';
import 'package:whats/screens/contacts_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Color tealDarkGreen = Color(0xff075E54);
  Color tealLightGreen = Color(0xff128C7E);
  Color lightGreen = Color(0xff25D366);
  Color outgoingChatBubble = Color(0xffDCF8C6);
  Color checkmarkBlue = Color(0xff34B7F1);
  Color chatBackground = Color(0xffECE5DD);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(
        primaryColor: tealDarkGreen,
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
          bottom: TabBar(tabs: [
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
