import 'package:flutter/material.dart';
import 'package:whatsapp_ui/constants.dart';
import 'package:whatsapp_ui/widgets/new_call_chat_item.dart';

class NewCallChat extends StatelessWidget {
  const NewCallChat({Key? key, required this.isCallScreen}) : super(key: key);

  final bool isCallScreen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Text('Select contact'),
            SizedBox(height: 5.0),
            Text('780 contacts', style: TextStyle(fontSize: 12)),
          ],
        ),
        actions: <IconButton>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
           ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.teal,
              child: Icon(
                Icons.people,
                color: Colors.white,
              ),
            ),
            title: Text(
              isCallScreen ? 'New group call' : 'New Group',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.teal,
              child: Icon(
                Icons.person_add,
                color: Colors.white,
              ),
            ),
            title: Text(
              'New Contact',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          NewCallItem(
            isCallScreen: isCallScreen,
            title: 'Rohit ranjan',
            image: const CircleAvatar(
              backgroundImage: NetworkImage(kUrl),
            ),
          ),
          NewCallItem(
            isCallScreen: isCallScreen,
            title: 'Name SurName',
            image: const CircleAvatar(
              backgroundImage: NetworkImage(kUrl),
            ),
          ),
          NewCallItem(
            isCallScreen: isCallScreen,
            title: 'Random Name',
            image: const CircleAvatar(
              backgroundImage: NetworkImage(kUrl),
            ),
          ),
          NewCallItem(
            isCallScreen: isCallScreen,
            title: 'Example Name',
            image: const CircleAvatar(
              backgroundImage: NetworkImage(kUrl),
            ),
          ),
          NewCallItem(
            isCallScreen: isCallScreen,
            title: 'Rohit ranjan',
            image: const CircleAvatar(
              backgroundImage: NetworkImage(kUrl),
            ),
          ),
          NewCallItem(
            isCallScreen: isCallScreen,
            title: 'Rohit',
            image: const CircleAvatar(
              backgroundImage: NetworkImage(kUrl),
            ),
          ),
          NewCallItem(
            isCallScreen: isCallScreen,
            title: 'Ranjan',
            image: const CircleAvatar(
              backgroundImage: NetworkImage(kUrl),
            ),
          ),
          NewCallItem(
            isCallScreen: isCallScreen,
            title: 'Unique Name',
            image: const CircleAvatar(
              backgroundImage: NetworkImage(kUrl),
            ),
          ),
        ],
      ),
    );
  }
}
