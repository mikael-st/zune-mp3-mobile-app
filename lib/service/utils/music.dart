import 'package:zune/service/utils/album.dart';
// import 'package:zune/service/utils/artist.dart';
import 'package:on_audio_query/on_audio_query.dart';

class Music {
  final int id;
  final String uri;
  //
  late String title;
  late Album album; //album-id
  late String artist; //artist-id
  // late List<String> genres = [];
  // late int year;
  late int track;
  late double duration;
  late int added;
  //
  late int artistId;
  late int albumId;

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
    return '{id: $id, uri: $uri, title: $title, artist: artist, album: $album, track: $track, duration: $duration}';
  }
}






// {
//  _id: 42,
//  _data: /storage/emulated/0/Music/Avenged Sevenfold - Shepherd Of Fire.mp3,

//  title: Shepherd Of Fire,
//  track: 1,
//  artist: Avenged Sevenfold,    artist_id: 2,
//  album: Hail To The King,      album_id:  3,     album_artist: Avenged Sevenfold,

//  duration: 322.612,
//  year: null,

//  date_added: 1705522049,
//  }
