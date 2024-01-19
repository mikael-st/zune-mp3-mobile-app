import 'package:first_app/assets/palette.dart';
import 'package:first_app/utils.dart';
import 'package:first_app/view/components/header.dart';
import 'package:first_app/view/components/lib_button.dart';
// import 'package:first_app/view/components/order_by.dart';
import 'package:flutter/material.dart';

class MusicsPage extends StatefulWidget {
  const MusicsPage({super.key});

  @override
  State<MusicsPage> createState() => _MusicsPageState();
}

class _MusicsPageState extends State<MusicsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: const Header(title: 'Musicas'), body: list());
  }

  Widget list() {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: Builder(builder: (context) {
          if (Utils.songs.isEmpty) {
            return Center(
                child: Text(
              'Nenhuma música encontrada',
              style: TextStyle(color: Palette.text),
            ));
          } else {
            return ListView(
                children: Utils.songs.map((song) {
              return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: LibButton(
                      text: song.title,
                      text2: song.artist,
                      img: song.album.artwork,
                      icon: Icons.music_note));
            }).toList());
          }
        }));
  }
}
