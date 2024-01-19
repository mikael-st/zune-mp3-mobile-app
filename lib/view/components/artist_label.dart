import '../../../assets/palette.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class ArtistLabel extends StatelessWidget {
  const ArtistLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      style: ListTileStyle.list,
      leading: ClipOval(
          child: Container(
        width: 55,
        height: 55,
        color: Palette.icon_box,
        child: Icon(
          FontAwesomeIcons.solidUser,
          color: Palette.text,
          size: 18,
        ),
      )),
      title: Text(
        'Artista',
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
