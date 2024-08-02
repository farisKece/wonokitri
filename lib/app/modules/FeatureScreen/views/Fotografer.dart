import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wonokitri/app/routes/app_pages.dart';

class Fotografer extends StatelessWidget {
  const Fotografer({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(Routes.FOTOGRAFER_DETAILS),
      child: SizedBox(
        width: Get.width,
        height: Get.height * .59,
        // color: Colors.yellow,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: .7),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://i.pinimg.com/564x/77/ec/88/77ec88c91c438e54b7a4eb9ec86215d1.jpg'))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Rp. 200.000',
                      style: TextStyle(fontSize: 14, color: Color(0xFF8BC342), fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Kawai Ruka',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        stars_icon(),
                        stars_icon(),
                        stars_icon(),
                        stars_icon(),
                        stars_icon(),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Pasuruan',
                      style: TextStyle(color: Color(0xFF8BC342)),
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

class stars_icon extends StatelessWidget {
  const stars_icon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.star, color: Colors.orange, size: 20);
  }
}
