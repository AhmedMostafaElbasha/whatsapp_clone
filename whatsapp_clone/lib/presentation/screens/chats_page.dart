import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data/data.dart';
import 'package:whatsapp_clone/presentation/presentation.dart';

class ChatsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        return ChatItem(chats[index]);
      },
    );
  }
}
