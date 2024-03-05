import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:get/get.dart';

class PermissionController {
  static Future<bool> checkPermission() async {
    try {
      if (await Permission.storage.isGranted) {
        return true;
      } else {
        final status = Permission.storage.request();
        if (await status.isGranted) {
          return true;
        } else {
        Get.snackbar('Permissão negada',
            'Por favor, aceite a permissão para acessar as músicas',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Colors.white);
        return false;
        }
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
