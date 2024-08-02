import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wonokitri/app/modules/home/controllers/home_controller.dart';
import 'package:wonokitri/app/routes/app_pages.dart';

class News extends StatelessWidget {
  const News(
      {super.key,
      required this.img,
      required this.controller,
      required this.text});

  final String img;
  final HomeController controller;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(Routes.NEWS),
      child: SizedBox(
        width: Get.width * .60,
        // height: 300,
        // color: Colors.red,
        child: Card(
          elevation: 7,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: Get.width * .6,
                    height: Get.width * .4,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                              img,
                            ),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    text,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
