import 'package:first_app/service/permissions.dart';
import 'package:first_app/service/repositories/file_manager.dart';
import 'package:first_app/service/repositories/state_manager.dart';
import 'package:first_app/service/utils/states.dart';
// import 'package:first_app/service/repositories/state_manager.dart';
// import 'package:first_app/service/utils/album.dart';
// import 'package:first_app/service/utils/music.dart';
// import 'package:first_app/service/utils/states.dart';
import 'package:first_app/utils.dart';
// import 'package:first_app/view/components/order_by.dart';

import '../assets/palette.dart';
// import 'package:first_app/view/pages/albuns_page.dart';
// import 'package:first_app/view/pages/artists_page.dart';
// import 'package:first_app/view/pages/home.dart';
// import 'package:first_app/view/pages/lib_page.dart';
// import 'package:first_app/view/pages/music_player.dart';
import 'package:first_app/view/pages/musics_page.dart';
// import 'package:first_app/view/pages/search_page.dart';
import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const App());
}

// ignore: must_be_immutable
class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    PermissionController.checkPermission();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Palette.background,
          textTheme: GoogleFonts.poppinsTextTheme(),
          fontFamily: 'Poppins',
        ),
        home: FutureBuilder(
            future: FileManager.getMusicFiles('/storage/emulated/0/Music'),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting &&
                  StateManager.state == States.loading) {
                return const Center(child: CircularProgressIndicator());
              } else {
                Utils.setAll(snapshot.data!);

                return MusicsPage();
              }
            }));
  }
}



        // MusicsPage()

        /* Scaffold(
          body: IndexedStack(
            index: _selectedIndex,
            children: [HomePage(), LibPage(), SearchPage()],
          ),
          bottomNavigationBar: menu(),
        ), */
        // initialRoute: '/',
        /* routes: {
          // '/': (context) => const HomePage(),
          // '/lib': (context) => const LibPage(),
          // '/search': (context) => const SearchPage(),
          '/musics': (context) => const MusicsPage(),
          '/albuns': (context) => const AlbunsPage(),
          '/artists': (context) => const ArtistsPage(),
        } */

/* Widget menu() {
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
              label: 'Pesquisar',
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
  } */
