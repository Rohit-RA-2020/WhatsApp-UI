// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/call_item.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        CallItem(
          name: 'Rohit',
          callstatus: 'incom',
          date: 'September 14, 15:02',
          mode: 'video',
        ),
        CallItem(
          name: 'Rohit ranjan',
          callstatus: 'out',
          date: 'September 14, 15:02',
          mode: 'phone',
        ),
        CallItem(
          name: 'Head Coach',
          callstatus: 'outg',
          date: 'September 11, 19:02',
          mode: 'phone',
        ),
        CallItem(
          name: 'Principle',
          callstatus: 'incom',
          date: 'September 22, 15:02',
          mode: 'phone',
        ),
        CallItem(
          name: 'Ranjan',
          callstatus: 'out',
          date: 'September 11, 15:02',
          mode: 'video',
        ),
        CallItem(
          name: 'Dad',
          callstatus: 'out',
          date: 'September 23, 15:02',
          mode: 'video',
        ),
        CallItem(
          name: 'Test call',
          callstatus: 'incom',
          date: 'September 14, 15:02',
          mode: 'phone',
        ),
        CallItem(
          name: 'Sample call',
          callstatus: 'incom',
          date: 'September 14, 15:02',
          mode: 'video',
        ),
        CallItem(
          name: 'Dummy Call',
          callstatus: 'incom',
          date: 'September 14, 15:02',
          mode: 'video',
        ),
      ],
    );
  }
}
