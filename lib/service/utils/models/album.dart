import 'dart:typed_data';
import 'package:zune/service/utils/models/artist.dart';
import 'package:zune/service/utils/models/music.dart';
import 'package:on_audio_query/on_audio_query.dart';

//Buscar infos aqui https://www.last.fm/api

class Album {
  final int id;
  late Uint8List art;
  late List<Music> songs;
  late String title; 
  //
  late int artistId;
  late String description;

  Album({required this.id, required this.artistId});

  factory Album.create(SongModel obj) {
    return Album(
        id: obj.albumId!, /* title: obj.album!, */ artistId: obj.artistId ?? 0);
  }

  // @override
  // String toString() {
  //   return '{id: $id, title: $title, artist: $artist, songs: $songs}';
  // }
}
