import 'package:flutter/material.dart';

import '../constants.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({
    Key? key,
    required this.name,
    required this.message,
    required this.time,
  }) : super(key: key);

  final String name;
  final String message;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 3.0),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Colors.teal,
          backgroundImage: NetworkImage(kUrl),
        ),
        title: Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Row(
          children: <Widget>[
            const Icon(
              Icons.done_all,
              size: 15,
              color: Colors.white38,
            ),
            const SizedBox(width: 4),
            Text(message, style: const TextStyle(color: Colors.white38))
          ],
        ),
        trailing: Text(time, style: const TextStyle(color: Colors.white38)),
      ),
    );
  }
}
