import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/home_screen.dart';
import 'package:whatsapp_ui/screens/new_call.dart';
import 'package:whatsapp_ui/screens/new_chat.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF131C21),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF262D31),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/newChat': (context) => const NewChat(),
        '/newcall': (context) => const NewCall()
      },
    );
  }
}
