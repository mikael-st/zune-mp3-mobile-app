import 'package:first_app/assets/zune_icons.dart';
import 'package:first_app/view/components/menu_options/menu_options.dart';
import '../../../assets/palette.dart';
import 'package:first_app/view/components/play_button.dart';
import 'package:flutter/material.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  // int current;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Palette.transparent,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  ZuneIcons.queue,
                  size: 16,
                  color: Palette.text,
                ))
          ],
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back_ios_new,
                size: 26,
                color: Palette.text,
              )),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Container(
                  width: 322,
                  height: 322,
                  color: Palette.icon_box,
                  child: Icon(Icons.music_note, color: Palette.text, size: 86),
                )),
            ListTile(
                contentPadding: EdgeInsets.zero,
                minVerticalPadding: 60,
                title: Text(
                  'Música',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Palette.text),
                ),
                subtitle: Text(
                  'Artista',
                  style: TextStyle(fontSize: 12, color: Palette.text),
                ),
                trailing: IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          builder: (BuildContext context) {
                            return MenuOptions();
                          });
                    },
                    icon: Icon(
                      Icons.more_vert,
                      color: Palette.text,
                      size: 26,
                    ))),
            Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                        child: Container(
                      margin: EdgeInsets.only(bottom: 10),
                      width: double.infinity,
                      height: 4,
                      color: Palette.icon_box,
                    )),
                    Positioned(
                        top: -1,
                        child: Container(
                          width: 75,
                          height: 6,
                          color: Palette.text,
                        )),
                    Positioned(
                        top: -3,
                        left: 70,
                        child: ClipOval(
                          child: Container(
                            width: 10,
                            height: 10,
                            color: Palette.text,
                          ),
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '00:00',
                      style: TextStyle(color: Palette.text),
                    ),
                    Text(
                      '00:00',
                      style: TextStyle(color: Palette.text),
                    )
                  ],
                )
              ],
            ),
            /* ) */
            Container(
                margin: EdgeInsets.only(top: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      ZuneIcons.shuffle,
                      color: Palette.various,
                    ),
                    Icon(Icons.skip_previous, color: Palette.text, size: 42),
                    PlayButton(
                      color: Palette.text,
                      iconColor: Palette.background,
                    ),
                    Icon(Icons.skip_next, color: Palette.text, size: 42),
                    Icon(ZuneIcons.vector, color: Palette.various),
                  ],
                ))
          ]),
        ));
  }
}
