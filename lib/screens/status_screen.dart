import 'package:flutter/material.dart';
import 'package:whatsapp_ui/constants.dart';
import 'package:whatsapp_ui/widgets/status_item.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.all(8.0),
          child: ListTile(
            title: Text(
              'My status',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            subtitle: Text('Today, 17:29'),
            trailing: Icon(Icons.more_horiz),
            leading: CircleAvatar(
              backgroundColor: Color(0xFF616161),
              radius: 25,
              child: CircleAvatar(
                radius: 22,
                backgroundImage: NetworkImage(kUrl),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25.0, top: 6.0),
          child: Text(
            'Viewed Updates',
            style: TextStyle(
              color: Color(0xFFBDBDBD),
            ),
          ),
        ),
        StatusItem(name: 'Rohit', time: 'Today, 13:20'),
        StatusItem(name: 'Principle', time: '15 minutes ago'),
        StatusItem(name: 'Head Coach', time: '30 minutes ago'),
        StatusItem(name: 'Sample Status', time: 'Today, 10:00'),
        StatusItem(name: 'Dummy Status', time: 'Today, 19:00'),
      ],
    );
  }
}
