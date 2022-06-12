import 'package:flutter/material.dart';
import 'package:workshop/screens/grid.dart';
import 'package:workshop/screens/home.dart';
import 'package:workshop/screens/listener_example.dart';
import 'package:workshop/screens/mouse_cursor_example.dart';
import 'package:workshop/screens/state_full_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/home': (context) => HomeScreen(),
        '/grid': (context) => GridExample(),
        '/state-full': (context) => StateFullExample(),
        '/mouse-cursor': (context) => MouseCursorExample(),
        '/listener': (context) => ListenerExample(),
      },
      //const GridTutor(),
    );
  }
}
