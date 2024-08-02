import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wonokitri/app/routes/app_pages.dart';

class Homestay extends StatelessWidget {
  const Homestay({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(Routes.HOMESTAY_DETAILS),
      child: SizedBox(
        width: Get.width,
        height: Get.height * .59,
        // color: Colors.yellow,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.25),
                    offset: const Offset(-2.0, 2.0),
                    blurRadius: 5.0,
                  ),
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.25),
                    offset: const Offset(2.0, 2.0),
                    blurRadius: 5.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: Get.width,
                          height: 86,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.network(
                            'https://i.pinimg.com/736x/c8/84/d1/c884d19caa1694346210f9fdecb06d65.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          left: 8,
                          top: 8,
                          child: Container(
                            height: 15,
                            width: 35,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text('4.5', style: TextStyle(fontSize: 10))
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    const Text(
                      'IDR. 250.000/Night',
                      style: TextStyle(
                          fontSize: 10,
                          color: Color(0xFF8BC342),
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Homestay Paimo',
                      style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Wonokitri Pasuruan',
                      style: TextStyle(fontSize: 12, color: Color(0xFF8BC342)),
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: 10,
        ),
      ),
    );
  }
}
