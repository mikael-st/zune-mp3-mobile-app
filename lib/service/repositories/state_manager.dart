import 'package:zune/service/utils/states.dart';
import 'package:flutter/material.dart';

class StateManager {
  static final state = ValueNotifier<States>(States.init);
}
