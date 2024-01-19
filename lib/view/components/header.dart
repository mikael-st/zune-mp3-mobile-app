import '../../../assets/palette.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const Header({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      clipBehavior: Clip.none,
      backgroundColor: Palette.background,
      elevation: 20,
      shadowColor: Palette.icon_box,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.arrow_back_ios_new,
          color: Palette.text,
          size: 18,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
            color: Palette.text, fontSize: 18, fontWeight: FontWeight.bold),
      ),
    ));
  }
}
