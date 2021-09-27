import 'package:flutter/material.dart';
import 'package:whatsapp_ui/details/calling_screen.dart';

import '../constants.dart';

class CallItem extends StatelessWidget {
  const CallItem(
      {Key? key,
      required this.name,
      required this.callstatus,
      required this.date,
      required this.mode})
      : super(key: key);

  final String name;
  final String callstatus;
  final String date;
  final String mode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 3.0),
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CallingScreen(name: name),
            ),
          );
        },
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
            (callstatus == 'incom')
                ? const Icon(
                    Icons.call_received,
                    size: 15,
                    color: Colors.red,
                  )
                : const Icon(
                    Icons.call_made,
                    size: 15,
                    color: Colors.green,
                  ),
            const SizedBox(width: 4),
            Text(date, style: const TextStyle(color: Colors.white38))
          ],
        ),
        trailing: (mode == 'video')
            ? const Icon(Icons.videocam, color: Colors.tealAccent)
            : const Icon(Icons.phone, color: Colors.tealAccent),
      ),
    );
  }
}
