import 'package:zune/view/models/switch.dart';
import 'package:get/get.dart';

import '../../../assets/palette.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:zune/view/models/switch.dart';

class Menu extends StatelessWidget {
  final int current;
  const Menu({super.key, required this.current});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Palette.various, width: 2))),
        child: BottomNavigationBar(
          onTap: (index) => {Go.to(current, context)},
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.compactDisc),
              label: 'Biblioteca',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.magnifyingGlass),
              label: 'Pesquisar',
            )
          ],
          selectedFontSize: 10,
          unselectedFontSize: 10,
          unselectedItemColor: Palette.unselected,
          fixedColor: Palette.text,
          backgroundColor: Palette.menu,
          type: BottomNavigationBarType.fixed,
          currentIndex: current,
        ));
  }
}
