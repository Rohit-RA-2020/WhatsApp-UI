import 'package:flutter/material.dart';
import 'package:whatsapp_ui/constants.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  bool flashPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFF131C21),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: Icon(flashPressed ? Icons.flash_off : Icons.flash_on,
                      size: kIconSize),
                  onPressed: () {
                    flashToggle();
                  },
                ),
                const Icon(Icons.circle_outlined, size: 60),
                const Icon(Icons.flip_camera_android, size: kIconSize)
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Hold for video, tap for photo'),
            )
          ],
        ),
      ),
    );
  }

  void flashToggle() {
    if (flashPressed) {
      setState(() {
        flashPressed = false;
      });
    } else {
      setState(() {
        flashPressed = true;
      });
    }
  }
}
