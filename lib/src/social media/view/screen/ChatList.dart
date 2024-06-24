import 'package:flutter/material.dart';
import 'package:untitled/src/social%20media/view/widget/chat_item.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ChatItem(),
              ChatItem(),
            ],
          ),
        ),
      ),
    );
  }
}
