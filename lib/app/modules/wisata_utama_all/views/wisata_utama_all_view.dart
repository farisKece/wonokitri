import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/wisata_utama_all_controller.dart';

class WisataUtamaAllView extends GetView<WisataUtamaAllController> {
  const WisataUtamaAllView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WisataUtamaAllView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'WisataUtamaAllView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
