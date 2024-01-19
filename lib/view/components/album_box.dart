import '../../../assets/palette.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AlbumBox extends StatelessWidget {
  const AlbumBox({super.key});

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
                color: Palette.icon_box,
                child: const Icon(
                  Icons.album_sharp,
                  color: Colors.white,
                  size: 42,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 8),
              child: const Text(
                'Album',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              'Artista',
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
          ],
        ));
  }
}
