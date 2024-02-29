import 'package:zune/service/repositories/file_manager.dart';
import 'package:zune/service/repositories/state_manager.dart';
import 'package:zune/service/utils/album.dart';
import 'package:zune/service/utils/artist.dart';
import 'package:zune/service/utils/music.dart';
import 'package:zune/service/utils/states.dart';
import 'package:on_audio_query/on_audio_query.dart';

class Utils {
  //
  static String path = '/storage/emulated/0/Music';
  static List<Music> songs = [];
  static List<Album> albuns = [];
  static List<Artist> artists = [];

  static void setAll(/* List<SongModel> list */) async {
    StateManager.state.value = States.loading;

    List<SongModel> list = await FileManager.getMusicFiles(path);

    songs = list.map((obj) => Music.create(obj)).toList();
    albuns = list.map((obj) => Album.create(obj)).toList();
    artists = list.map((obj) => Artist.create(obj)).toList();

    for (Album album in albuns) {
      album.art = await FileManager.getArtwork(album.id);
    }

    for (Artist artist in artists) {
      artist.albuns =
          albuns.where((album) => album.artistId == artist.id).toList();
    }

    for (Album album in albuns) {
      album.songs = songs.where((song) => song.albumId == album.id).toList();
    }

    songs.forEach((song) {
      albuns.forEach((obj) {
        if (song.albumId == obj.id) {
          song.album = obj;
        }
      });
    });

    StateManager.state.value = States.success;
  }

  // static void setAll(List<SongModel> list) async {
  //   StateManager.state = States.loading;
  //   songs = list.map((obj) => Music.create(obj)).toList();
  //   albuns = list.map((obj) => Album.create(obj)).toList();

  //   for (Album album in albuns) {
  //     album.artwork = await FileManager.getArtwork(album.id);
  //   }

  //   songs.forEach((song) {
  //     albuns.forEach((obj) {
  //       if (song.albumId == obj.id) {
  //         song.album = obj;
  //       }
  //     });
  //   });

  //   for (Album album in albuns) {
  //     album.songs = songs.where((song) => song.albumId == album.id).toList();
  //   }

  //   StateManager.state = States.success;
  // }

  // static void setArts() async {
  //   for (Album album in albuns) {
  //     album.artwork = Image.memory(await FileManager.getArtwork(album.id));
  //   }
  // }
}
