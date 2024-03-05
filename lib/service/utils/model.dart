import 'package:zune/service/utils/album.dart';

abstract class Model {
  final int id;
  late String title;
  late Album? album; //album-id
  late String? artist;

  Model({required this.id});
}