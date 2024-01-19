import '../../../assets/palette.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class ArtistBox extends StatelessWidget {
  const ArtistBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipOval(
              child: Container(
                width: 96,
                height: 96,
                color: Palette.icon_box,
                child: const Icon(
                  FontAwesomeIcons.solidUser,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
            Container(
                padding: const EdgeInsets.only(top: 12),
                child: const Text(
                  'Artista',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                )),
          ],
        ));
  }
}
