import 'package:first_app/service/repositories/file_manager.dart';
import 'package:first_app/service/utils/album.dart';
import 'package:first_app/service/utils/music.dart';
import 'package:flutter/foundation.dart';

import '../../../assets/palette.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LibButton extends StatelessWidget {
  final Music song;
  final Album album;
  // final String text, text2;
  final IconData icon;
  // final MemoryImage img;

  LibButton(
      {super.key, required this.song, required this.album, required this.icon});

  @override
  Widget build(BuildContext context) {
    return 

    // ListTile(
    //   contentPadding: const EdgeInsets.all(0),
    //   style: ListTileStyle.list,
    //   leading: ClipRRect(
    //       borderRadius: BorderRadius.circular(4),
    //       child: Container(
    //           width: 55,
    //           height: 55,
    //           decoration: img != MemoryImage(Uint8List(0))
    //               ? BoxDecoration(
    //                   image: DecorationImage(image: img, fit: BoxFit.cover))
    //               : BoxDecoration(color: Palette.icon_box),
    //           child: img != MemoryImage(Uint8List(0)) ? null : Icon(icon))),
    //   title: Text(
    //     text,
    //     style: TextStyle(
    //         color: Palette.text, fontSize: 12, fontWeight: FontWeight.bold),
    //   ),
    //   subtitle: Text(
    //     text2,
    //     style: TextStyle(color: Palette.text, fontSize: 10),
    //   ),
    //   trailing: Icon(
    //     Icons.more_vert,
    //     color: Palette.text,
    //   ),
    // );
  }
}
/* 

FutureBuilder(
              future: img,
              builder: (context, snapshot) {
                return Container(
                    width: 55,
                    height: 55,
                    decoration:
                        snapshot.data != null && snapshot.data != Uint8List(0)
                            ? BoxDecoration(
                                image: DecorationImage(
                                  image: MemoryImage(snapshot.data!),
                                  fit: BoxFit.contain,
                                ),
                              )
                            : BoxDecoration(color: Palette.icon_box),
                    child: snapshot.data != Uint8List(0) ? null : Icon(icon));
              }) */