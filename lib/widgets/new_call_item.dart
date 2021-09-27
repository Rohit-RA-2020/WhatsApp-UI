import 'package:flutter/material.dart';

class NewCallItem extends StatelessWidget {
  const NewCallItem({Key? key, required this.image, required this.title})
      : super(key: key);

  final String title;
  final Widget image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: ListTile(
        subtitle: const Text(
          'calling Page',
          style: TextStyle(fontSize: 12.0),
        ),
        leading: CircleAvatar(
          backgroundColor: Colors.teal,
          child: image,
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
                icon: const Icon(Icons.call, color: Colors.teal),
                onPressed: () {}),
            IconButton(
                icon: const Icon(Icons.videocam),
                color: Colors.teal,
                onPressed: () {})
          ],
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
