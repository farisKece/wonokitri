import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:wonokitri/app/modules/home/controllers/home_controller.dart';

class CarousleSlider extends StatelessWidget {
  const CarousleSlider({
    super.key,
    required this.controller,
  });

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 180 ,
              autoPlay: true,
              aspectRatio: 2.0,
              viewportFraction: 1,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) =>
                  controller.current.value = index,
            ),
            items: controller.imgList
                .map((item) => SizedBox(
                      child: Container(
                        margin: const EdgeInsets.all(5.0),
                        child: ClipRRect(
                            borderRadius: const BorderRadius.all(
                                Radius.circular(5.0)),
                            child: Stack(
                              children: <Widget>[
                                Image.network(item,
                                    fit: BoxFit.cover, width: 1000.0),
                                Positioned(
                                  bottom: 0.0,
                                  left: 0.0,
                                  right: 0.0,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color.fromARGB(
                                              200, 0, 0, 0),
                                          Color.fromARGB(0, 0, 0, 0)
                                        ],
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                      ),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10.0,
                                        horizontal: 20.0),
                                    child: Text(
                                      'No. ${controller.imgList.indexOf(item) + 1} image',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ))
                .toList(),
          ),
          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
                  controller.imgList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => controller.carouselController
                      .animateToPage(entry.key),
                  child: Container(
                    width: 10.0,
                    height: 10.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness ==
                                    Brightness.dark
                                ? Colors.white
                                : Colors.black
                                // Color(0xFf8BC342)
                                )
                            .withOpacity(
                                controller.current == entry.key
                                    ? 0.9
                                    : 0.4)),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}