import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/navigation_controller.dart';

class NavigationView extends GetView<NavigationController> {
  const NavigationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: FloatingNavbar(
            margin: const EdgeInsets.all(0),
            padding: const EdgeInsets.all(8),
            onTap: (val) {
              controller.selectedIndex.value = val;
              print(val);
            },
            borderRadius: 25,
            itemBorderRadius: 25,
            currentIndex: controller.selectedIndex.value,
            backgroundColor: const Color(0xFF8BC342),
            selectedBackgroundColor: Colors.white,
            selectedItemColor: const Color(0xFF8BC342),
            items: [
              FloatingNavbarItem(
                icon: Icons.home,
              ),
              FloatingNavbarItem(
                icon: Icons.explore,
              ),
              FloatingNavbarItem(
                icon: Icons.location_pin,
              ),
              FloatingNavbarItem(
                icon: Icons.window,
              ),
              FloatingNavbarItem(
                icon: Icons.person,
              ),
            ],
          ),
        ),
      ),
      body: Obx(
        () => controller.screens[controller.selectedIndex.value],
      ),
    );
  }
}
