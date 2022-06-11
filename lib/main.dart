import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Menu Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NewAnimationMenu(),
    );
  }
}

class NewAnimationMenu extends StatefulWidget {
  const NewAnimationMenu({Key? key}) : super(key: key);

  @override
  State<NewAnimationMenu> createState() => _NewAnimationMenuState();
}

class _NewAnimationMenuState extends State<NewAnimationMenu> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

