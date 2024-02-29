import 'dart:typed_data';

import '../../../assets/palette.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AlbumBox extends StatelessWidget {
  final String title;
  final MemoryImage art;

  const AlbumBox({super.key, required this.title, required this.art});

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
                width: 145,
                height: 145,
                decoration: art != MemoryImage(Uint8List(0))
                    ? BoxDecoration(
                        image: DecorationImage(image: art, fit: BoxFit.cover))
                    : BoxDecoration(color: Palette.icon_box),
                child: art != MemoryImage(Uint8List(0))
                    ? null
                    : Icon(
                        Icons.album_sharp,
                        color: Palette.text,
                        size: 42,
                      ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                title,
                style: TextStyle(
                    color: Palette.text,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              'Artista',
              style: TextStyle(color: Palette.text, fontSize: 10),
            ),
          ],
        ));
  }
}
