import '../../../assets/palette.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddPlaylist extends StatelessWidget {
  const AddPlaylist({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Container(
              width: 54,
              height: 54,
              color: Palette.various,
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: Container(
                  margin: const EdgeInsets.only(left: 14),
                  child: const Text(
                    'Criar playlist',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )))
        ],
      ),
    );
  }
}
