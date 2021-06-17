import 'package:flutter/material.dart';
import 'package:whats/model/user.dart';
import 'package:whats/widgets/contact_widget.dart';

class ContactsScreen extends StatelessWidget {
  List<User> users = [
    User(
        name: 'Bruno Henrique',
        description: 'Oto Patamar',
        imageSrc: 'assets/images/avatar.png',
        platform: 'Mobile'),
    User(
        name: 'Gabriel',
        description: 'Hoje tem',
        imageSrc: 'assets/images/avatar.png',
        platform: 'Mobile'),
    User(
        name: 'Giorgian',
        description: 'Arô',
        imageSrc: 'assets/images/avatar.png',
        platform: 'Mobile'),
    User(
        name: 'Gerson',
        description: 'Vapo',
        imageSrc: 'assets/images/avatar.png',
        platform: 'Mobile'),
    User(
        name: 'Filipe Luis',
        description: 'Iron Maiden',
        imageSrc: 'assets/images/avatar.png',
        platform: 'Web'),
    User(
        name: 'Pedro',
        description: ':)',
        imageSrc: 'assets/images/avatar.png',
        platform: 'Mobile'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(vertical: 15),
      child: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return ContactWidget(users[index]);
        },
      ),
    );
  }
}
