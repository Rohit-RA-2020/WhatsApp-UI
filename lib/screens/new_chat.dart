import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/new_chat_item.dart';

class NewChat extends StatelessWidget {
  const NewChat({Key? key}) : super(key: key);

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
        children: const <Widget>[
          NewContactItem(
            title: 'New Group',
            image: Icon(Icons.people_sharp, color: Colors.white),
          ),
          NewContactItem(
            title: 'New Contact',
            image: Icon(Icons.person_add, color: Colors.white),
          ),
          NewContactItem(
            title: 'Rohit ranjan',
            image: CircleAvatar(
              backgroundImage:
                  NetworkImage('https://thispersondoesnotexist.com/image'),
            ),
          ),
          NewContactItem(
            title: 'Name SurName',
            image: CircleAvatar(
              backgroundImage:
                  NetworkImage('https://thispersondoesnotexist.com/image'),
            ),
          ),
          NewContactItem(
            title: 'Random Name',
            image: CircleAvatar(
              backgroundImage:
                  NetworkImage('https://thispersondoesnotexist.com/image'),
            ),
          ),
          NewContactItem(
            title: 'Example Name',
            image: CircleAvatar(
              backgroundImage:
                  NetworkImage('https://thispersondoesnotexist.com/image'),
            ),
          ),
          NewContactItem(
            title: 'Rohit ranjan',
            image: CircleAvatar(
              backgroundImage:
                  NetworkImage('https://thispersondoesnotexist.com/image'),
            ),
          ),
          NewContactItem(
            title: 'Rohit',
            image: CircleAvatar(
              backgroundImage:
                  NetworkImage('https://thispersondoesnotexist.com/image'),
            ),
          ),
          NewContactItem(
            title: 'Ranjan',
            image: CircleAvatar(
              backgroundImage:
                  NetworkImage('https://thispersondoesnotexist.com/image'),
            ),
          ),
          NewContactItem(
            title: 'Unique Name',
            image: CircleAvatar(
              backgroundImage:
                  NetworkImage('https://thispersondoesnotexist.com/image'),
            ),
          ),
        ],
      ),
    );
  }
}
