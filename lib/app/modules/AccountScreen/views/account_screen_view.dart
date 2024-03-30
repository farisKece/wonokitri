import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/account_screen_controller.dart';

class AccountScreenView extends GetView<AccountScreenController> {
  const AccountScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AccountScreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AccountScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
