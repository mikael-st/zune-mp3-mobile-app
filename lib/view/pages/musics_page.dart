import 'package:zune/assets/palette.dart';
import 'package:zune/service/utils.dart';
import 'package:zune/view/components/header.dart';
import 'package:zune/view/components/lib_button.dart';
// import 'package:zune/view/components/order_by.dart';
import 'package:flutter/material.dart';
import 'package:zune/view/components/options/menu_options.dart';

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
                      title: song.title,
                      sub: song.artist,
                      art: MemoryImage(song.album.art),
                      icon: Icons.music_note,
                      options: const MenuOptions(),));
            }).toList());
          }
        }));
  }
}
