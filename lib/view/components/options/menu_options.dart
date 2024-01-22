import 'package:flutter/material.dart';
import 'package:zune/view/components/options/opt_menu_label.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../assets/palette.dart';
import 'package:zune/assets/zune_icons.dart';

class MenuOptions extends StatelessWidget {
  const MenuOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Palette.background,
            borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(8),
              topEnd: Radius.circular(8),
            )),
        width: double.infinity,
        height: 560,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Palette.various,
                  borderRadius: BorderRadius.circular(50)),
              margin: EdgeInsets.only(top: 15),
              width: 175,
              height: 5,
            ),
            const OptMenuLabel(
                text: 'Musica',
                text2: 'artista  •  album',
                icon: Icons.music_note),
            ListTile(
              leading: Icon(
                ZuneIcons.next,
                color: Palette.text,
                size: 20,
              ),
              title: Text(
                'Reproduzir à seguir',
                style: TextStyle(color: Palette.text, fontSize: 12),
              ),
            ),
            ListTile(
              leading: Icon(
                ZuneIcons.add_music,
                color: Palette.text,
                size: 20,
              ),
              title: Text(
                'Adicionar à playlist',
                style: TextStyle(color: Palette.text, fontSize: 12),
              ),
            ),
            ListTile(
              leading: Icon(
                ZuneIcons.add_queue,
                color: Palette.text,
                size: 16,
              ),
              title: Text(
                'Adicionar à fila',
                style: TextStyle(color: Palette.text, fontSize: 12),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.album,
                color: Palette.text,
              ),
              title: Text(
                'Ir para album',
                style: TextStyle(color: Palette.text, fontSize: 12),
              ),
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.solidUser,
                color: Palette.text,
                size: 20,
              ),
              title: Text(
                'Ir para artista',
                style: TextStyle(color: Palette.text, fontSize: 12),
              ),
            ),
            ListTile(
              leading: Icon(
                ZuneIcons.pencil,
                color: Palette.text,
                size: 20,
              ),
              title: Text(
                'Editar',
                style: TextStyle(color: Palette.text, fontSize: 12),
              ),
            ),
            ListTile(
              leading: Icon(
                ZuneIcons.vector_3_,
                color: Palette.text,
                size: 20,
              ),
              title: Text(
                'Excluir do dispositivo',
                style: TextStyle(color: Palette.text, fontSize: 12),
              ),
            )
          ],
        ));
  }
}
