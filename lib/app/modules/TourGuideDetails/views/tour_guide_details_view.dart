import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tour_guide_details_controller.dart';

class TourGuideDetailsView extends GetView<TourGuideDetailsController> {
  const TourGuideDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            offset: const Offset(4.0, 4.0),
                            blurRadius: 10.0,
                          ),
                        ],
                      ),
                      child: const Icon(Icons.arrow_back),
                    ),
                  ),
                  const Spacer(),
                  Obx(
                    () => GestureDetector(
                      onTap: () {
                        controller.isFavorite.toggle();
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              offset: const Offset(4.0, 4.0),
                              blurRadius: 10.0,
                            ),
                          ],
                        ),
                        child: controller.isFavorite.value
                            ? const Icon(
                                Icons.favorite,
                                color: Color(0xFF8BC342),
                              )
                            : const Icon(Icons.favorite_border_rounded),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Container(
                          width: Get.width * .75,
                          height: Get.width * .59,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                offset: const Offset(4.0, 4.0),
                                blurRadius: 10.0,
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius:
                                      BorderRadiusDirectional.circular(100),
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        'https://i.pinimg.com/564x/fd/fc/a3/fdfca33fc80bdbafd7d02d0f071a4e61.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Text(
                                'Kawai Ruka',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stars_icon(),
                                  Stars_icon(),
                                  Stars_icon(),
                                  Stars_icon(),
                                  Stars_icon(),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Pasuruan',
                                style: TextStyle(color: Color(0xFF8BC342)),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Text(
                        'Hai, Saya Kawai Ruka',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        controller.desc,
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: ListView.builder(
                          itemCount: controller.tipes.length,
                          scrollDirection: Axis.horizontal,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 3),
                              child: Container(
                                margin: const EdgeInsets.all(2),
                                height: 37,
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF8BC342),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.25),
                                      offset: const Offset(4.0, 4.0),
                                      blurRadius: 10.0,
                                    ),
                                  ],
                                ),
                                child: Text(
                                  controller.tipes[index],
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 2.5,
                        color: Colors.grey.withOpacity(.15),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('Bisa Berkomunikasi Dengan Bahasa'),
                      buildItem('1', 'Inggris'),
                      buildItem('2', 'Korea Selatan'),
                      buildItem('3', 'Indonesia'),
                      buildItem('4', 'Jepang'),
                      const SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 2.5,
                        color: Colors.grey.withOpacity(.15),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Stars_icon extends StatelessWidget {
  const Stars_icon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Icon(Icons.star, color: Colors.orange, size: 20);
  }
}

Widget buildItem(String number, String tipe) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 2.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$number. ',
          style: TextStyle(
            color: Colors.black.withOpacity(.5),
          ),
        ),
        Expanded(
          child: Text(
            tipe,
            style: TextStyle(
              color: Colors.black.withOpacity(.5),
              fontSize: 13,
            ),
          ),
        ),
      ],
    ),
  );
}
