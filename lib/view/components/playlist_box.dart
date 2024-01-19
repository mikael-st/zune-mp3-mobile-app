import '../../../../../../assets/palette.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PlaylistBox extends StatelessWidget {
  const PlaylistBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 4, bottom: 8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Container(
              width: 187,
              height: 56,
              color: Palette.various,
              child: Row(
                children: [
                  Container(
                      width: 56,
                      height: 56,
                      color: Palette.icon_box,
                      child: const Icon(
                        Icons.playlist_play_rounded,
                        color: Colors.white,
                      )),
                  Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text(
                        'Playlist',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ))
                ],
              )),
        ));
  }
}
