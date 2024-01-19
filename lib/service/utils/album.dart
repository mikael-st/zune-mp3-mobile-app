import 'package:first_app/service/repositories/file_manager.dart';
import 'package:first_app/service/utils/music.dart';
import 'package:flutter/material.dart';
import 'package:on_audio_query/on_audio_query.dart';

// {
//  album_art: /storage/emulated/0/Android/data/com.android.providers.media/albumthumbs/1705522026302,
//
//  album_artist: Avenged Sevenfold,
//  artist: Avenged Sevenfold,
//  album: Hail To The King,
//  _id: 3,
//  numsongs: 1,
//  artist_id: 2}

//Buscar infos aqui https://www.last.fm/api

class Album {
  final int id;
  final String title;
  final String artist;
  late MemoryImage artwork;
  late List<Music> songs;
  // final List<String> genres = [];
  // final int year;
  // late String description;

  Album({
    required this.id,
    required this.title,
    required this.artist,
  }) {
    setArtwork();
  }

  factory Album.create(SongModel obj) {
    return Album(
        id: obj.albumId ?? 0, title: obj.album ?? '', artist: obj.artist ?? '');
  }

  void setArtwork() async {
    artwork = MemoryImage(await FileManager.getArtwork(id));
  }

  @override
  String toString() {
    return '{id: $id, title: $title, artist: $artist, album: $songs}';
  }
}
