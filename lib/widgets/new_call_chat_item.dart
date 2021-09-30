import 'package:flutter/material.dart';

class NewCallItem extends StatelessWidget {
  const NewCallItem(
      {Key? key,
      required this.image,
      required this.title,
      required this.isCallScreen})
      : super(key: key);

  final String title;
  final Widget image;
  final bool isCallScreen;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: ListTile(
        subtitle: const Text(
          'Status Goes here',
          style: TextStyle(fontSize: 12.0),
        ),
        leading: CircleAvatar(
          backgroundColor: Colors.teal,
          child: image,
        ),
        trailing: isCallScreen
            ? Row(
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
              )
            : null,
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
