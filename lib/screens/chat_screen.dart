import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/chat_item.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        ChatItem(
            name: 'Branch Manager', message: 'Hello This is me', time: '20:00'),
        ChatItem(name: 'Teacher', message: 'Will do it', time: '11:00'),
        ChatItem(name: 'Principle', message: 'Exam Timimg?', time: '12:00'),
        ChatItem(name: 'Tution Friend', message: 'Subject name', time: '15:00'),
        ChatItem(name: 'Rohit ranjan', message: 'Heyy', time: '19:00'),
        ChatItem(
            name: 'College Friend',
            message: 'Today is the viva',
            time: '20:20'),
        ChatItem(name: 'Dad', message: 'Will Reach home fast', time: '20:30'),
        ChatItem(name: 'Head Coach', message: 'Match venue?', time: '20:40'),
        ChatItem(name: 'UnKnow', message: 'Who\'s this', time: '20:50'),
        ChatItem(name: 'Sample chat', message: 'Dummy text msg', time: '06:00'),
        ChatItem(name: 'Dummy Item', message: 'Sample Text msg', time: '17:00'),
        ChatItem(
            name: 'Example chat item',
            message: 'Chat item message',
            time: '13:00'),
        ChatItem(name: 'Last Chat', message: 'Last message', time: '19:00'),
      ],
    );
  }
}
