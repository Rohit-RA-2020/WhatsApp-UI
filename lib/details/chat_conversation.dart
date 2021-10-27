import 'package:flutter/material.dart';
import 'package:whatsapp_ui/details/calling_screen.dart';
import '../../constants.dart';

class ChatConversation extends StatefulWidget {
  const ChatConversation({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  _ChatConversationState createState() => _ChatConversationState();
}

class _ChatConversationState extends State<ChatConversation>
    with TickerProviderStateMixin {
  late AnimationController _micButtonAnimationController;
  late Animation _micButtonScaleAnimation;

  @override
  void initState() {
    super.initState();

    _micButtonAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 450));

    _micButtonScaleAnimation = Tween<double>(begin: 0.8, end: 1.5)
        .animate(_micButtonAnimationController);
  }

  @override
  void dispose() {
    _micButtonAnimationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: <Widget>[
            InkWell(
                child: const Icon(Icons.arrow_back),
                onTap: () {
                  Navigator.pop(context);
                }),
            const CircleAvatar(backgroundImage: NetworkImage(kUrl)),
            const SizedBox(width: 20.0 * 0.75),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(widget.name, style: const TextStyle(fontSize: 16)),
                const Text('Active 3 min ago', style: TextStyle(fontSize: 10)),
              ],
            )
          ],
        ),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.call),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            CallingScreen(name: widget.name)));
              }),
          IconButton(icon: const Icon(Icons.videocam), onPressed: () {}),
          IconButton(icon: const Icon(Icons.more_vert), onPressed: () {})
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(100, 20, 100, 5),
                    child: Container(
                      height: 30,
                      child: const Center(
                        child: Text(
                          '24 September 2021',
                          style: TextStyle(color: kAppBarTextColor),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFF262D31),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.07),
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.teal.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 8.0, right: 8.0, left: 8.0, bottom: 15.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                icon: Icon(
                                  Icons.sentiment_satisfied_alt_outlined,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color!
                                      .withOpacity(0.64),
                                ),
                                hintText: "Type message",
                                border: InputBorder.none,
                                suffixIcon: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.attach_file,
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color!
                                          .withOpacity(0.64),
                                    ),
                                    Icon(
                                      Icons.camera_alt_outlined,
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color!
                                          .withOpacity(0.64),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            micWidget(),
          ],
        ),
      ),
    );
  }

  Widget micWidget() {
    return Padding(
      padding: const EdgeInsets.only(right: 5.0),
      child: GestureDetector(
        onVerticalDragEnd: (val) {
          _micButtonAnimationController.reverse();
        },
        onLongPress: () {
          _micButtonAnimationController.forward();
        },
        onLongPressEnd: (_) {
          _micButtonAnimationController.reverse().then((value) {});
        },
        child: AnimatedBuilder(
          animation: _micButtonAnimationController,
          builder: (context, child) {
            return Align(
              alignment: Alignment.bottomRight,
              child: Transform.scale(
                scale: _micButtonScaleAnimation.value,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(50)),
                  child: const Icon(
                    Icons.mic,
                    color: Colors.white,
                    size: 26.0,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
