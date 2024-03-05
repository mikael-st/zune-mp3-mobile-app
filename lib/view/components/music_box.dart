import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:zune/assets/palette.dart';
import 'package:zune/view/components/options/menu_options.dart';

// ignore: must_be_immutable
class MusicBox extends StatelessWidget {
  final String title;
  final MemoryImage art;

  const MusicBox({super.key, required this.title, required this.art});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        onLongPress: () {
          showModalBottomSheet(context: context, builder: (BuildContext c) {
            return const MenuOptions();
          });
        },
        child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Container(
                    width: 110,
                    height: 110,
                    decoration: art != MemoryImage(Uint8List(0))
                        ? BoxDecoration(
                            image:
                                DecorationImage(image: art, fit: BoxFit.cover))
                        : BoxDecoration(color: Palette.icon_box),
                    child: art != MemoryImage(Uint8List(0))
                        ? null
                        : Icon(
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
            )));
  }
}
