import 'package:first_app/service/utils/album.dart';
// import 'package:first_app/service/utils/artist.dart';
import 'package:on_audio_query/on_audio_query.dart';

//{
//  _id: 42
//  _uri: /storage/emulated/0/Music/Avenged Sevenfold - Shepherd Of Fire.mp3,
//
//  title: Shepherd Of Fire,
//  album: Hail To The King,
//  artist: Avenged Sevenfold,
//  duration: 322612,
//  year: null,
//  track: 1,
//  artist_id: 2,
//  album_id: 3,
// }
// miliseconds: 1705522049

class Music {
  final int id;
  final String uri;
  //
  final String title;
  late Album album; //album-id
  final String artist; //artist-id
  // final List<String> genres = [];
  // final int year;
  final int track;
  final double duration;
  final int added;
  //
  final int artistId;
  final int albumId;

  Music(
      {required this.id,
      required this.uri,
      required this.title,
      required this.artist,
      required this.track,
      required this.duration,
      required this.added,
      required this.artistId,
      required this.albumId});

  factory Music.create(SongModel obj) {
    return Music(
        id: obj.id,
        uri: obj.data,
        title: obj.title,
        artist: obj.artist ?? '',
        track: obj.track ?? 0,
        duration: obj.duration! / 1000,
        added: obj.dateAdded ?? DateTime.now().millisecondsSinceEpoch,
        albumId: obj.albumId ?? 0,
        artistId: obj.artistId ?? 0);
  }

  // String formatTime(double time) {
  //   var minutes = time / 60;
  //   var seconds = (minutes - minutes.toInt()) * 60;
  //   return '0${minutes.toInt()}:${seconds.toInt()}';
  // }

  @override
  String toString() {
    return '{id: $id, uri: $uri, title: $title, artist: $artist, album: $album, track: $track, duration: $duration}';
  }
}
