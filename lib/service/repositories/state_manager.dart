import 'package:zune/service/repositories/file_manager.dart';
import 'package:zune/service/utils/album.dart';
import 'package:zune/service/utils/music.dart';
import 'package:zune/service/utils/states.dart';
import 'package:zune/service/utils.dart';
import 'package:flutter/material.dart';
import 'package:async/async.dart';

class StateManager {
  static final state = ValueNotifier<States>(States.init);
}
