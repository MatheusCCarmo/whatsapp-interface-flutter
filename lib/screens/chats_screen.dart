import 'package:flutter/material.dart';
import 'package:whats/widgets/chat_widget.dart';

class ChatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) {
          return ChatWidget();
        },
      ),
    );
  }
}
