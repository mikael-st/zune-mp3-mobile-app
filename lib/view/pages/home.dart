import 'package:zune/page.dart';
import 'package:zune/view/components/album_box.dart';
import 'package:zune/view/components/artist_box.dart';
import 'package:zune/view/components/music_box.dart';
import 'package:zune/view/components/playlist_box.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageModel(
        index: 0,
        child: Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(top: 75, left: 15, right: 15),
            child: const SingleChildScrollView(
              clipBehavior: Clip.none,
              child: Column(children: [
                PlaylistSec(),
                MusicSec(),
                AlbumSec(),
                ArtistSec()
              ]),
            )));
  }
}

class PlaylistSec extends StatelessWidget {
  const PlaylistSec({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 38),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 12),
              child: const Text('Playlists',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ),
            const Row(
              children: [
                PlaylistBox(),
                PlaylistBox(),
              ],
            ),
            const Row(
              children: [PlaylistBox(), PlaylistBox()],
            )
          ],
        ));
  }
}

class MusicSec extends StatelessWidget {
  const MusicSec({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 38),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 12),
              child: const Text('Musicas tocadas recentemente',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ),
            SingleChildScrollView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [...List.generate(10, (index) => const MusicBox())],
                ))
          ],
        ));
  }
}

class AlbumSec extends StatelessWidget {
  const AlbumSec({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 38),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 12),
              child: const Text('Albuns favoritos',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ),
            SingleChildScrollView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [...List.generate(10, (index) => const AlbumBox())],
                ))
          ],
        ));
  }
}

class ArtistSec extends StatelessWidget {
  const ArtistSec({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 38),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 12),
              child: const Text('Artistas favoritos',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ),
            SingleChildScrollView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(10, (index) => const ArtistBox())
                  ],
                ))
          ],
        ));
  }
}
