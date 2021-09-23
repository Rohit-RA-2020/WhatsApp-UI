import 'package:flutter/material.dart';
import 'package:whatsapp_ui/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'WhatsApp',
            style: TextStyle(color: kAppBarTextColor),
          ),
          actions: <IconButton>[
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: kAppBarTextColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: kAppBarTextColor,
              ),
            )
          ],
          bottom: const TabBar(
            unselectedLabelColor: Colors.grey,
            labelColor: kTabTextColor,
            tabs: <Tab>[
              Tab(text: 'CHATS'),
              Tab(text: 'STATUS'),
              Tab(text: 'CALLS'),
            ],
          ),
        ),
        body: const Center(
          child: Text('Home Screen'),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kFabColor,
          onPressed: () {},
          child: const Icon(
            Icons.message_rounded,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
