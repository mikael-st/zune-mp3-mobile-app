import 'package:flutter/material.dart';

class Go {
  static void to(int index, BuildContext c) {
    switch (index) {
      case 0:
        Navigator.of(c).pushReplacementNamed('/');
        break;
      case 1:
        Navigator.of(c).pushReplacementNamed('/lib');
        break;
      case 2:
        Navigator.of(c).pushReplacementNamed('/search');
        break;
    }
  }
}
