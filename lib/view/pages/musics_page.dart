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
                      // img: song.album.artwork,
                      icon: Icons.music_note));
            }).toList());
          }
        })

        // FutureBuilder(
        //     future: FileManager.getMusicFiles('/storage/emulated/0/Music'),
        //     builder: (context, snapshot) {
        //       if (snapshot.data == null || snapshot.data!.length == 0) {
        //         return Center(
        //             child: Text(
        //           'Nenhuma música encontrada',
        //           style: TextStyle(color: Palette.text),
        //         ));
        //       } else if (snapshot.connectionState == ConnectionState.waiting) {
        //         return const Center(child: CircularProgressIndicator());
        //       } else {
        //         return ListView(children: [
        //           OrderBy(),
        //           ...List.generate(snapshot.data!.length, (index) {
        //             print(snapshot.data![index]);
        //             return Padding(
        //                 padding: const EdgeInsets.only(bottom: 10),
        //                 child: LibButton(
        //                     text: snapshot.data![index].title,
        //                     text2: '${snapshot.data![index].artist}',
        //                     icon: Icons.music_note));
        //           })
        //         ]);
        //       }
        //     })

        /* Builder(builder: (context) {
          if (utils.songs == null || utils.songs.isEmpty) {
            return Center(
                child: Text(
              'Nenhuma música encontrada',
              style: TextStyle(color: Palette.text),
            ));
          } else if 
        }) */

        /*  */
        );
  }
}
