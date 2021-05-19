import 'package:flutter/material.dart';
import 'package:whats/model/user.dart';
import 'package:whats/widgets/contact_widget.dart';

class ContactsScreen extends StatelessWidget {
  List<User> users = [
    User(
        name: 'Bruno Henrique',
        description: 'Oto Patamar',
        imageUrl:
            'https://www.osaogoncalo.com.br/img/normal/70000/bruno-henrique-no-flamengo_00076925_0.jpg?xid=191634',
        platform: 'Mobile'),
    User(
        name: 'Gabigol',
        description: 'Pode levantar a plaquinha',
        imageUrl:
            'https://portalcorreio.com.br/wp-content/uploads/2020/01/Gabigol-%C3%A9-o-grande-astro-do-Flamengo-Cr%C3%A9dito-Divulga%C3%A7%C3%A3o.jpg',
        platform: 'Mobile'),
    User(
        name: 'Arrascaeta',
        description: 'Arô',
        imageUrl:
            'https://3.bp.blogspot.com/-MTBMsXYxnsg/XdO5UqtaDmI/AAAAAAACSSk/cZvGkWGFhEU7Bg4Z4em0FyTZCrG5ZpnUwCLcBGAsYHQ/s1600/arrascaeta-flamengo-palmeiras-brasileirao-01-09-2019_auxnr9dva1aq1ic6ca7lhv6ly.jpg',
        platform: 'Mobile'),
    User(
        name: 'Gerson',
        description: 'Vapo',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRao8ViTcT9hPS5txkdUIT6uDeYn15xM3Ad7A&usqp=CAU',
        platform: 'Mobile'),
    User(
        name: 'Filipe Luis',
        description: 'Iron Maiden',
        imageUrl:
            'https://pbs.twimg.com/profile_images/1157283652079935488/hWcprjg4_400x400.jpg',
        platform: 'Web'),
    User(
        name: 'Pedro',
        description: 'Quem perdoa é Deus',
        imageUrl:
            'https://pbs.twimg.com/profile_images/1288267349628456961/JhxBs0Ez_400x400.jpg',
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
