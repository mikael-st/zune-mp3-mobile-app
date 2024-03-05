import 'dart:typed_data';

import '../../../assets/palette.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class ArtistLabel extends StatelessWidget {
  final MemoryImage art;
  final String name;
  // final MemoryImage photo;
  const ArtistLabel({super.key, required this.name, required this.art});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      style: ListTileStyle.list,
      leading: ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Container(
              width: 55,
              height: 55,
              decoration: art != MemoryImage(Uint8List(0))
                  ? BoxDecoration(
                      image: DecorationImage(image: art, fit: BoxFit.cover))
                  : BoxDecoration(color: Palette.icon_box),
              child: art != MemoryImage(Uint8List(0)) ? null : Icon(FontAwesomeIcons.solidUser, color: Palette.text,))),
      title: Text(
        name,
        style: TextStyle(
            color: Palette.text, fontSize: 13, fontWeight: FontWeight.bold),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: Palette.text,
        size: 18,
      ),
    );
  }
}
