import 'package:flutter/material.dart';
import 'package:whatsapp_ui/details/calling_screen.dart';
import 'package:whatsapp_ui/widgets/chat_input_field.dart';

import '../constants.dart';

class ChatConversation extends StatelessWidget {
  const ChatConversation({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: <Widget>[
            InkWell(
                child: const Icon(Icons.arrow_back),
                onTap: () {
                  Navigator.pop(context);
                }),
            const CircleAvatar(backgroundImage: NetworkImage(kUrl)),
            const SizedBox(width: 20.0 * 0.75),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(name, style: const TextStyle(fontSize: 16)),
                const Text('Active 3 min ago', style: TextStyle(fontSize: 10)),
              ],
            )
          ],
        ),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.call),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CallingScreen(name: name)));
              }),
          IconButton(icon: const Icon(Icons.videocam), onPressed: () {}),
          IconButton(icon: const Icon(Icons.more_vert), onPressed: () {})
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 30,
              width: 140,
              child: const Center(
                child: Text(
                  '24 September 2021',
                  style: TextStyle(color: kAppBarTextColor),
                ),
              ),
              decoration: BoxDecoration(
                color: const Color(0xFF262D31),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const ChatInputField()
        ],
      ),
    );
  }
}
