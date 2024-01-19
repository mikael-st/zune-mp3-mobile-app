import 'package:first_app/service/repositories/file_manager.dart';
import 'package:first_app/service/repositories/state_manager.dart';
import 'package:first_app/service/utils/album.dart';
import 'package:first_app/service/utils/artist.dart';
import 'package:first_app/service/utils/music.dart';
import 'package:first_app/service/utils/states.dart';
import 'package:on_audio_query/on_audio_query.dart';

class Utils {
  static String path = '/storage/emulated/0/Music';
  static List<Music> songs = [];
  static List<Album> albuns = [];
  static List<Artist> artists = [];

  static void setAll(List<SongModel> list) async {
    StateManager.state = States.loading;
    songs = list.map((obj) => Music.create(obj)).toList();
    albuns = list.map((obj) => Album.create(obj)).toList();

    for (Album album in albuns) {
      album.songs = songs.where((song) => song.albumId == album.id).toList();
    }

    songs.forEach((song) {
      albuns.forEach((obj) async {
        if (song.albumId == obj.id) {
          song.album = obj;
        }
        obj.artwork = await FileManager.getArtwork(obj.id);
      });
    });

    StateManager.state = States.success;
  }
}


/* var songs = list.map((obj) => Music.create(obj)).toList();
    songs.sort((a, b) => a.added.compareTo(b.added));

    List<Album> albs = list.map((obj) => Album.create(obj)).toList();

    for (Album album in albs) {
      album.songs = songs.where((s) => s.albumId == album.id).toList();
      print(album);
    } */