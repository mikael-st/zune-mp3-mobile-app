import 'package:first_app/service/permissions.dart';
import 'package:first_app/service/utils/album.dart';
import 'package:first_app/service/utils/music.dart';
import 'package:first_app/service/utils/states.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:flutter/foundation.dart';

class FileManager {
  static final OnAudioQuery _onAudioQuery = OnAudioQuery();

  static Future<List<Music>> getMusicFiles(String path) async {
    try {
      if (await PermissionController.checkPermission()) {
        var list = await _onAudioQuery.querySongs(
          path: path,
          sortType: null,
          ignoreCase: true,
          orderType: OrderType.ASC_OR_SMALLER,
          uriType: UriType.EXTERNAL,
        );
        var songs = list.map((obj) => Music.create(obj)).toList();
        return songs;
      } else {
        await PermissionController.checkPermission();
        return [];
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  // static Future<List<AlbumModel>> getAlbuns() async {
  //   try {
  //     if (await PermissionController.checkPermission()) {
  //       List<AlbumModel> files = await _onAudioQuery.queryAlbums(
  //         sortType: null,
  //         ignoreCase: true,
  //         orderType: OrderType.ASC_OR_SMALLER,
  //         uriType: UriType.EXTERNAL,
  //       );
  //       // List<Album> albuns = files.map((obj) => Album.create(obj)).toList();
  //       return files;
  //     } else {
  //       await PermissionController.checkPermission();
  //       return [];
  //     }
  //   } catch (e) {
  //     throw Exception(e);
  //   }
  // }

  static Future<Uint8List> getArtwork(int id) async {
    try {
      if (await PermissionController.checkPermission()) {
        return await _onAudioQuery.queryArtwork(id, ArtworkType.ALBUM) ??
            Uint8List(0);
      } else {
        await PermissionController.checkPermission();
        return Uint8List(0);
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
