import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tour_guide_controller.dart';

class TourGuideView extends GetView<TourGuideController> {
  const TourGuideView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TourGuideView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TourGuideView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
