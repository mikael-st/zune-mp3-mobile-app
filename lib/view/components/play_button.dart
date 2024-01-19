import 'package:flutter/material.dart';

class PlayButton extends StatefulWidget {
  final Color color, iconColor;
  PlayButton({super.key, required this.color, required this.iconColor});

  @override
  State<PlayButton> createState() =>
      _PlayButtonState(color: color, iconColor: iconColor);
}

class _PlayButtonState extends State<PlayButton> {
  final Color color, iconColor;

  _PlayButtonState({required this.color, required this.iconColor});
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      shape: const CircleBorder(),
      backgroundColor: color,
      child: Icon(
        Icons.play_arrow,
        color: iconColor,
        size: 32,
      ),
    );
  }
}
