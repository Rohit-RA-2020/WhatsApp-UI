import 'package:flutter/material.dart';

class NewContactItem extends StatelessWidget {
  const NewContactItem({Key? key, required this.image, required this.title})
      : super(key: key);

  final String title;
  final Widget image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: ListTile(
        subtitle: const Text(
          'Status goes here',
          style: TextStyle(fontSize: 11.0),
        ),
        leading: CircleAvatar(
          backgroundColor: Colors.teal,
          child: image,
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
