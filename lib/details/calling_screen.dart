import 'package:flutter/material.dart';

class CallingScreen extends StatefulWidget {
  const CallingScreen({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  State<CallingScreen> createState() => _CallingScreenState();
}

class _CallingScreenState extends State<CallingScreen> {
  bool _speakerPressed = false;
  bool _micPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 100),
            CircleAvatar(
                radius: 40,
                child: const Icon(Icons.person, size: 60),
                backgroundColor: Colors.grey.shade900),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(widget.name,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
            ),
            const Text('Ringing', style: TextStyle(fontSize: 15))
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.teal[800],
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: _speakerPressed ? Colors.teal : Colors.transparent,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                    icon: const Icon(Icons.volume_up),
                    onPressed: () {
                      _speaker();
                    }),
              ),
              IconButton(icon: const Icon(Icons.videocam), onPressed: () {}),
              Container(
                decoration: BoxDecoration(
                  color: _micPressed ? Colors.teal : Colors.transparent,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                    icon: const Icon(Icons.mic_off),
                    onPressed: () {
                      _mic();
                    }),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                    icon: const Icon(Icons.call_end),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _speaker() {
    if (_speakerPressed == false) {
      setState(() {
        _speakerPressed = true;
      });
    } else {
      setState(() {
        _speakerPressed = false;
      });
    }
  }

  void _mic() {
    if (_micPressed == false) {
      setState(() {
        _micPressed = true;
      });
    } else {
      setState(() {
        _micPressed = false;
      });
    }
  }
}
