import 'package:on_audio_query/on_audio_query.dart';
import 'package:zune/service/utils/album.dart';
// import 'package:flutter/material.dart';

class Artist {
  final int id;
  late String name;
  // final MemoryImage photo;
  late List<Album> albuns;
  // late String description;

  Artist({required this.id, required this.name});

  factory Artist.create(SongModel obj) {
    return Artist(id: obj.artistId ?? 0, name: obj.artist ?? '');
  }
}
