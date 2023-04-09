import 'package:talkbooks/api/chat_api.dart';
import 'package:talkbooks/chat_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(TalkBooks(chatApi: ChatApi()));
}

class TalkBooks extends StatelessWidget {
  const TalkBooks({required this.chatApi, super.key});

  final ChatApi chatApi;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChatGPT Client',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          secondary: Colors.lime,
        ),
      ),
      home: ChatPage(chatApi: chatApi),
    );
  }
}
