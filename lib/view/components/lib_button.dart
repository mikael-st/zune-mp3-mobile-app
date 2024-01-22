import 'package:flutter/foundation.dart';

import '../../../assets/palette.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LibButton extends StatelessWidget {
  final String title, sub;
  final IconData icon;
  final MemoryImage art;

  LibButton(
      {super.key,
      required this.title,
      required this.sub,
      required this.icon,
      required this.art});

  @override
  Widget build(BuildContext context) {
    print(art);
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
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
              child: art != MemoryImage(Uint8List(0)) ? null : Icon(icon))),
      title: Text(
        title,
        style: TextStyle(
            color: Palette.text, fontSize: 12, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        sub,
        style: TextStyle(color: Palette.text, fontSize: 10),
      ),
      trailing: Icon(
        Icons.more_vert,
        color: Palette.text,
      ),
    );
  }
}
/* 

FutureBuilder(
              future: img,
              builder: (context, snapshot) {
                return Container(
                    width: 55,
                    height: 55,
                    decoration:
                        snapshot.data != null && snapshot.data != Uint8List(0)
                            ? BoxDecoration(
                                image: DecorationImage(
                                  image: MemoryImage(snapshot.data!),
                                  fit: BoxFit.contain,
                                ),
                              )
                            : BoxDecoration(color: Palette.icon_box),
                    child: snapshot.data != Uint8List(0) ? null : Icon(icon));
              }) */