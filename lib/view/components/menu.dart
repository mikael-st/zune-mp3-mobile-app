import '../../../assets/palette.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:first_app/view/models/switch.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Palette.transparent, Palette.icon_box],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [0.0, 1])),
        child: BottomNavigationBar(
          onTap: (index) => {
            setState(() {
              _selectedIndex = index;
            }),
          },
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
              label: 'Biblioteca',
            )
          ],
          selectedFontSize: 8,
          unselectedFontSize: 8,
          unselectedItemColor: Palette.unselected,
          fixedColor: Palette.text,
          backgroundColor: Palette.transparent,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
        ));
  }
}
