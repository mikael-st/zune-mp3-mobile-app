import 'dart:typed_data';

import 'package:first_app/service/repositories/file_manager.dart';
import 'package:first_app/service/utils/music.dart';
import 'package:flutter/material.dart';
import 'package:on_audio_query/on_audio_query.dart';

//Buscar infos aqui https://www.last.fm/api

class Album {
  final int id;
  String title;
  String artist;
  late MemoryImage artwork;
  List<Music> songs = [];

  Album({
    required this.id,
    required this.title,
    required this.artist,
    MemoryImage? artwork,
  }) : artwork = artwork ?? MemoryImage(Uint8List(0));

  factory Album.create(SongModel obj) {
    return Album(
      id: obj.albumId ?? 0,
      title: obj.album ?? '',
      artist: obj.artist ?? '',
    );
  }

  @override
  String toString() {
    return '{id: $id, title: $title, artist: $artist, songs: $songs}';
  }
}
