import '../../../../assets/palette.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OptMenuLabel extends StatelessWidget {
  final String text, text2;
  final IconData icon;

  const OptMenuLabel(
      {super.key, required this.text, required this.text2, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            border:
                Border(bottom: BorderSide(color: Palette.various, width: 2))),
        child: ListTile(
            contentPadding: const EdgeInsets.all(0),
            style: ListTileStyle.list,
            leading: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Container(
                  width: 55,
                  height: 55,
                  color: Palette.icon_box,
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: 20,
                  ),
                )),
            title: Text(
              text,
              style: TextStyle(
                  color: Palette.text,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              text2,
              style: TextStyle(color: Palette.text, fontSize: 10),
            )));
  }
}
