import 'package:flutter/material.dart';

const kDefaultPadding = 20.0;

class ChatInputField extends StatefulWidget {
  const ChatInputField({
    Key? key,
  }) : super(key: key);

  @override
  State<ChatInputField> createState() => _ChatInputFieldState();
}

class _ChatInputFieldState extends State<ChatInputField> {
  double sizeOfIcon = 20;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 32,
            color: const Color(0xFF087949).withOpacity(0.08),
          ),
        ],
      ),
      child: Stack(
        overflow: Overflow.clip,
        children: [
          Container(
            padding: const EdgeInsets.only(
              right: 60,
              left: 10,
            ),
            decoration: BoxDecoration(
              color: Colors.teal.withOpacity(0.05),
              borderRadius: BorderRadius.circular(40),
            ),
            child: TextField(
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
                suffixIconConstraints:
                    const BoxConstraints(maxHeight: 48, maxWidth: 48),
              ),
            ),
          ),
          const SizedBox(width: kDefaultPadding - 10),
          Positioned(
            left: MediaQuery.of(context).size.width / 1.25,
            top: 5,
            child: CircleAvatar(
              radius: sizeOfIcon,
              child: GestureDetector(
                onLongPress: () => {
                  setState(() {
                    sizeOfIcon = 30;
                  })
                },
                onLongPressUp: () {
                  setState(() {
                    sizeOfIcon = 20;
                  });
                },
                child: Icon(Icons.mic, color: Colors.white, size: sizeOfIcon),
              ),
              backgroundColor: Colors.teal,
            ),
          ),
        ],
      ),
    );
  }
}
