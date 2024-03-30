import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/wishlist_screen_controller.dart';

class WishlistScreenView extends GetView<WishlistScreenController> {
  const WishlistScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WishlistScreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'WishlistScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
