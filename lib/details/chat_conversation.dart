import 'package:flutter/material.dart';
import 'package:whatsapp_ui/constants.dart';
import 'package:whatsapp_ui/details/calling_screen.dart';

class ChatConversation extends StatelessWidget {
  final String name;

  const ChatConversation({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: <IconButton>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.videocam)),
          IconButton(
              onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CallingScreen(name: name),
                    ),
                  ),
              icon: const Icon(Icons.phone)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
        title: Row(
          children: <Widget>[
            const CircleAvatar(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                name,
                style: const TextStyle(fontSize: 16),
              ),
            )
          ],
        ),
      ),
      body: Stack(
        children: [
          Image.network(
            'https://user-images.githubusercontent.com/15075759/28719144-86dc0f70-73b1-11e7-911d-60d70fcded21.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 30,
                    width: 140,
                    child: const Center(
                        child: Text(
                      '24 September 2021',
                      style: TextStyle(color: kAppBarTextColor),
                    )),
                    decoration: BoxDecoration(
                      color: const Color(0xFF262D31),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 350,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: const <Widget>[
                                    Icon(
                                      Icons.face_rounded,
                                      color: kAppBarTextColor,
                                    ),
                                    SizedBox(width: 6),
                                    Text(
                                      'Message',
                                      style: TextStyle(color: kAppBarTextColor),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: const <Widget>[
                                    Icon(Icons.attachment_rounded,
                                        color: kAppBarTextColor),
                                    SizedBox(width: 10),
                                    Icon(Icons.camera_alt,
                                        color: kAppBarTextColor)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFF262D31),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      const SizedBox(width: 5.0),
                      const CircleAvatar(
                        backgroundColor: Colors.teal,
                        child: Icon(
                          Icons.mic,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
