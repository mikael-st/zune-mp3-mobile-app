import 'package:zune/assets/palette.dart';
import 'package:zune/page.dart';
import 'package:zune/view/components/add_playlist.dart';
import 'package:zune/view/components/lib_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LibPage extends StatelessWidget {
  const LibPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageModel(
        index: 1,
        child: Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(top: 75, left: 15, right: 15),
            child: const SingleChildScrollView(
                clipBehavior: Clip.none,
                child: Column(children: [Lib(), MyPlaylists()]))));
  }
}

class Lib extends StatelessWidget {
  const Lib({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: const EdgeInsets.only(bottom: 15),
                child: const Text(
                  'Biblioteca',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                )),
            /* const LibButton(
              text: 'Musicas',
              text2: 'faixas',
              icon: Icons.music_note,
            ),
            const LibButton(
              text: 'Albuns',
              text2: 'albuns',
              icon: Icons.album,
            ),
            const LibButton(
              text: 'Artistas',
              text2: 'artistas',
              icon: FontAwesomeIcons.solidUser,
            ) */
          ],
        ));
  }
}

class MyPlaylists extends StatelessWidget {
  const MyPlaylists({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: const EdgeInsets.only(bottom: 15),
            child: const Text(
              'Playlists',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            )),
        /* const LibButton(
          text: 'Playlist',
          text2: 'faixas',
          icon: Icons.playlist_play,
        ),
        const LibButton(
          text: 'Playlist',
          text2: 'faixas',
          icon: Icons.playlist_play,
        ),
        const LibButton(
          text: 'Playlist',
          text2: 'faixas',
          icon: Icons.playlist_play,
        ), */
        const AddPlaylist()
      ],
    );
  }
}

class BackGroundPic extends StatelessWidget {
  const BackGroundPic({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      // height: 300,
      color: Palette.background,
      child: const Icon(
        Icons.album_sharp,
        color: Colors.white,
        size: 32,
      ),
    );
  }
}
