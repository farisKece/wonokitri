import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dialogs {
  static final Dialogs _faris = Dialogs._internal();

  factory Dialogs() {
    return _faris;
  }

  Dialogs._internal();

  static Future<bool> exitDialog() async {
    return (await showDialog(
          context: Get.overlayContext!,
          builder: (context) => AlertDialog(
            title: const Text('Apa kamu yakin?'),
            content: const Text('Ingin keluar dari aplikasi ini?'),
            actions: <Widget>[
              TextButton(
                  onPressed: () => Get.back(result: false),
                  child: const Text('Tidak')),
              TextButton(
                  onPressed: () => Get.back(result: true),
                  child: const Text('Ya')),
            ],
          ),
        )) ??
        false;
  }
}
