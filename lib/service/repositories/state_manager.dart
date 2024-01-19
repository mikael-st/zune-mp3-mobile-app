import 'package:first_app/service/repositories/file_manager.dart';
import 'package:first_app/service/utils/album.dart';
import 'package:first_app/service/utils/music.dart';
import 'package:first_app/service/utils/states.dart';
import 'package:first_app/utils.dart';
import 'package:flutter/material.dart';
import 'package:async/async.dart';

class StateManager {
  static States state = States.loading;

  // static void init() {
  //   FileManager.getMusicFiles('/storage/emulated/0/Music').then((list) {
  //     state = States.success;
  //     var songs = list.map((obj) => Music.create(obj)).toList();
  //     songs.sort((a, b) => a.added.compareTo(b.added));

  //     List<Album> albs = list.map((obj) => Album.create(obj)).toList();

  //     for (Album album in albs) {
  //       album.songs = songs.where((s) => s.albumId == album.id).toList();
  //       print(album);
  //     }
  //   }).catchError((e) {
  //     state = States.erro;
  //     return null;
  //   });
  // }
}
