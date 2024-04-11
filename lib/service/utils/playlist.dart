import 'package:zune/service/utils/models/music.dart';

class Playlist {
  final int id;
  List<Music> musics = [];

  Playlist({required this.id});
}