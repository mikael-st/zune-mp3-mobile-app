import 'package:first_app/service/utils/album.dart';
import 'package:flutter/material.dart';

class Artist {
  final int _id;
  final String name;
  final int artist;
  final MemoryImage artwork;
  final List<Album> albuns = [];
  late String description;

  Artist(this.name, this._id, this.artist, this.artwork);
}
