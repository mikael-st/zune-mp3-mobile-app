import 'package:zune/service/permissions.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:flutter/foundation.dart';

class FileManager {
  static final OnAudioQuery _onAudioQuery = OnAudioQuery();

  static Future<List<SongModel>> getMusicFiles(String path) async {
    try {
      if (await PermissionController.checkPermission()) {
        return await _onAudioQuery.querySongs(
          path: path,
          sortType: null,
          ignoreCase: true,
          orderType: OrderType.ASC_OR_SMALLER,
          uriType: UriType.EXTERNAL,
        );
      } else {
        await PermissionController.checkPermission();
        return [];
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<Uint8List> getArtwork(int id) async {
    try {
      if (await PermissionController.checkPermission()) {
        return await _onAudioQuery.queryArtwork(
              id,
              ArtworkType.ALBUM,
            ) ??
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
