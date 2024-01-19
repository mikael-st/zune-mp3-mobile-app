import '../../../assets/palette.dart';
import 'package:first_app/service/permissions.dart';
import 'package:first_app/service/repositories/file_manager.dart';
import 'package:first_app/view/components/artist_label.dart';
import 'package:first_app/view/components/header.dart';
import 'package:first_app/view/components/order_by.dart';
import 'package:flutter/material.dart';
import 'package:first_app/view/components/play_button.dart';

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
        child: FutureBuilder(
            future: FileManager.getMusicFiles('/storage/emulated/0/Music'),
            builder: (context, snapshot) {
              if (snapshot.data == null) {
                return const Center(child: Text('Nenhuma música encontrada'));
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return ListView(children: [
                  OrderBy(),
                  ...List.generate(snapshot.data!.length, (index) {
                    return const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: ArtistLabel());
                  })
                ]);
              }
            }));
  }
}
