import 'package:flutter/material.dart';

import '../constants.dart';

class StatusItem extends StatelessWidget {
  const StatusItem({
    Key? key,
    required this.name,
    required this.time,
  }) : super(key: key);

  final String name;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Color(0xFF2E7D32),
          radius: 25,
          child: CircleAvatar(
            radius: 22,
            backgroundImage: NetworkImage(kUrl),
          ),
        ),
        title: Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          time,
          style: const TextStyle(color: Colors.white38),
        ),
      ),
    );
  }
}
