import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/maps_screen_controller.dart';

class MapsScreenView extends GetView<MapsScreenController> {
  const MapsScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MapsScreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MapsScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
