import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 29,
      ),
      title: Text(
        'John of the nike',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text('Sabe onde eu to, mano?'),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text('11:48 AM'),
          SizedBox(
            height: 10,
          ),
          CircleAvatar(
            child: Text('2'),
            radius: 10,
          ),
        ],
      ),
    );
  }
}
