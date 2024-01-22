import 'dart:typed_data';
import 'package:zune/service/utils/music.dart';
import 'package:on_audio_query/on_audio_query.dart';

//Buscar infos aqui https://www.last.fm/api

class Album {
  final int id;
  String title;
  String artist;
  late Uint8List art;
  late List<Music> songs;

  Album({
    required this.id,
    required this.title,
    required this.artist,
  });

  factory Album.create(SongModel obj) {
    return Album(
      id: obj.albumId!,
      title: obj.album!,
      artist: obj.artist ?? '',
    );
  }

  @override
  String toString() {
    return '{id: $id, title: $title, artist: $artist, songs: $songs}';
  }
}
