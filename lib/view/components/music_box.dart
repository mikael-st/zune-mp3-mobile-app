import 'dart:typed_data';

import '../../../assets/palette.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MusicBox extends StatelessWidget {
  final String title, sub;
  final MemoryImage art;

  const MusicBox(
      {super.key, required this.title, required this.sub, required this.art});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Container(
                width: 110,
                height: 110,
                color: Palette.icon_box,
                child: Icon(
                  Icons.music_note_sharp,
                  color: Palette.text,
                  size: 26,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                title,
                style: TextStyle(
                    color: Palette.text,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        )

        // ListTile(
        //   leading: ClipRRect(
        //       borderRadius: BorderRadius.circular(4),
        //       child: Container(
        //         width: 110,
        //         height: 110,
        //         decoration: art != MemoryImage(Uint8List(0))
        //             ? BoxDecoration(
        //                 image: DecorationImage(image: art, fit: BoxFit.cover))
        //             : BoxDecoration(color: Palette.icon_box),
        //         child: art != MemoryImage(Uint8List(0))
        //             ? null
        //             : Icon(
        //                 Icons.music_note_sharp,
        //                 color: Palette.text,
        //                 size: 26,
        //               ),
        //       )),
        //   title: Text(
        //     title,
        //     style: TextStyle(
        //         color: Palette.text, fontSize: 12, fontWeight: FontWeight.bold),
        //   ),
        //   subtitle: Text(
        //     sub,
        //     style: TextStyle(color: Palette.text, fontSize: 10),
        //   ),
        // )

        /* Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Container(
                width: 110,
                height: 110,
                color: Palette.icon_box,
                child: const Icon(
                  Icons.music_note_sharp,
                  color: Colors.white,
                  size: 26,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 4),
              child: const Text(
                'Musica',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ) */
        );
  }
}
