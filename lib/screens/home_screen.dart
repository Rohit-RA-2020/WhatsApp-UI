import 'package:flutter/material.dart';
import 'package:whatsapp_ui/constants.dart';
import 'package:whatsapp_ui/screens/call_screen.dart';
import 'package:whatsapp_ui/screens/camera.dart';
import 'package:whatsapp_ui/screens/status_screen.dart';

import 'chat_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 4, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: tabController!.index == 0
            ? null
            : AppBar(
                elevation: 0,
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
                bottom: TabBar(
                  controller: tabController,
                  unselectedLabelColor: Colors.grey,
                  labelColor: kTabTextColor,
                  tabs: const <Tab>[
                    Tab(icon: Icon(Icons.camera_alt)),
                    Tab(text: 'CHATS'),
                    Tab(text: 'STATUS'),
                    Tab(text: 'CALLS'),
                  ],
                ),
              ),
        body: TabBarView(
          controller: tabController,
          children: const <Widget>[
            CameraScreen(),
            ChatScreen(),
            StatusScreen(),
            CallScreen(),
          ],
        ),
        floatingActionButton: tabController!.index == 0
            ? null
            : tabController!.index == 1
                ? FloatingActionButton(
                    backgroundColor: kFabColor,
                    onPressed: () {
                      Navigator.pushNamed(context, '/newChat');
                    },
                    child: const Icon(
                      Icons.message_rounded,
                      color: Colors.white,
                    ),
                  )
                : tabController!.index == 2
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 45,
                            width: 45,
                            child: FloatingActionButton(
                              elevation: 2,
                              backgroundColor: Colors.black,
                              onPressed: () {
                                Navigator.pushNamed(context, '/newChat');
                              },
                              child: const Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          FloatingActionButton(
                            backgroundColor: kFabColor,
                            onPressed: () {
                              Navigator.pushNamed(context, '/newChat');
                            },
                            child: const Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    : FloatingActionButton(
                        backgroundColor: kFabColor,
                        onPressed: () {
                          Navigator.pushNamed(context, '/newcall');
                        },
                        child: const Icon(
                          Icons.add_call,
                          color: Colors.white,
                        ),
                      ),
      ),
    );
  }
}
