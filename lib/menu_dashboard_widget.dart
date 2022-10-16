import 'package:flutter/material.dart';

final TextStyle menuFontStyle =
    const TextStyle(color: Colors.white, fontSize: 20);
final Color backgroundColor = Color(0xFF343442);

class NewAnimationMenu extends StatefulWidget {
  const NewAnimationMenu({Key? key}) : super(key: key);

  @override
  State<NewAnimationMenu> createState() => _NewAnimationMenuState();
}

class _NewAnimationMenuState extends State<NewAnimationMenu> {
  late double ekranYuksekligi, ekranGenisligi;
  late bool menuOpen = false;

  @override
  Widget build(BuildContext context) {
    ekranYuksekligi = MediaQuery.of(context).size.height;
    ekranGenisligi = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            menuCreate(context),
            dashboardCreate(context),
          ],
        ),
      ),
    );
  }

  Widget menuCreate(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dashboard',
              style: menuFontStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Message',
              style: menuFontStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Utility Bills',
              style: menuFontStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Fund Transfer',
              style: menuFontStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Branches',
              style: menuFontStyle,
            ),
          ],
        ),
      ),
    );
  }

  Widget dashboardCreate(BuildContext context) {
    return AnimatedPositioned(
      top: menuOpen ? 0.2 * ekranYuksekligi : 0,
      bottom: menuOpen ? 0.2 * ekranGenisligi : 0,
      left: menuOpen ? 0.4 * ekranGenisligi : 0,
      right: menuOpen ? -0.4 * ekranGenisligi : 0,
      duration: Duration(milliseconds: 350),
      child: Material(
        borderRadius: menuOpen ? BorderRadius.all(Radius.circular(20)) : null,
        elevation: 8,
        color: backgroundColor,
        child: Container(
          padding: EdgeInsets.only(left: 16, right: 16, top: 8),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        menuOpen = !menuOpen;
                      });
                    },
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'My Cards',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  Icon(
                    Icons.add_circle_outline,
                    color: Colors.white,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
