import '../../../assets/palette.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MusicBox extends StatelessWidget {
  const MusicBox({super.key});

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
        ));
  }
}
