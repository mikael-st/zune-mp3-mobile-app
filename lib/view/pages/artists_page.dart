import 'package:zune/service/utils.dart';

import '../../../assets/palette.dart';
import 'package:zune/service/permissions.dart';
import 'package:zune/service/repositories/file_manager.dart';
import 'package:zune/view/components/artist_label.dart';
import 'package:zune/view/components/header.dart';
import 'package:zune/view/components/order_by.dart';
import 'package:flutter/material.dart';
import 'package:zune/view/components/play_button.dart';

class ArtistsPage extends StatefulWidget {
  const ArtistsPage({super.key});

  @override
  State<ArtistsPage> createState() => ArtistsPageState();
}

class ArtistsPageState extends State<ArtistsPage> {
  @override
  void initState() {
    super.initState();
    PermissionController.checkPermission();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const Header(title: 'Artistas'),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: PlayButton(
          color: Palette.various,
          iconColor: Palette.text,
        ),
        body: list());
  }

  Widget list() {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: Builder(builder: (context) {
          if (Utils.artists.isEmpty) {
            return Center(
                child: Text(
              'Nenhum artista encontrado',
              style: TextStyle(color: Palette.text),
            ));
          } else {
            return ListView(
                children: Utils.artists.map((artist) {
              return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: ArtistLabel(name: artist.name));
            }).toList());
          }
        }));
  }
}
