import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wonokitri/app/routes/app_pages.dart';

import '../controllers/account_screen_controller.dart';

class AccountScreenView extends GetView<AccountScreenController> {
  const AccountScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Spacer(),
                    InkWell(onTap: () => Get.toNamed(Routes.SETTINGS),child: Container(
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
                      child: const Icon(
                        Icons.settings_outlined,
                        color: Color(0xFF8BC342),
                        size: 30,
                      ),
                    ),),
                    
                  ],
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(200),
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://i.pinimg.com/564x/33/16/cf/3316cfde58e31da20c698a00308ea524.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Dwi Ajeng Pratiwi',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  '+62 896-5486-4884',
                  style: TextStyle(
                      fontSize: 16, color: Colors.black.withOpacity(.5)),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          offset: const Offset(4.0, 4.0),
                          blurRadius: 10.0,
                        ),
                      ],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          Icon(
                            Icons.translate,
                            color: Color(0xFF8BC342),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Bahasa',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          Text(
                            'Indonesia',
                            style: TextStyle(
                                fontSize: 16, color: Color(0xFF8BC342)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: Get.width,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        offset: const Offset(4.0, 4.0),
                        blurRadius: 10.0,
                      ),
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MediaSocial(
                          icon: FontAwesomeIcons.tiktok,
                          title: 'Tiktok',
                        ),
                        MediaSocial(
                          icon: FontAwesomeIcons.instagram,
                          title: 'Instagram',
                        ),
                        MediaSocial(
                          icon: FontAwesomeIcons.youtube,
                          title: 'Youtube',
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: Get.width,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        offset: const Offset(4.0, 4.0),
                        blurRadius: 10.0,
                      ),
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        About(
                          icon: FontAwesomeIcons.phoneVolume,
                          title: 'Number Phone',
                          desc: '+62 896-5486-4884',
                        ),
                        About(
                          icon: FontAwesomeIcons.envelope,
                          title: 'Email',
                          desc: 'dewiajengpratiwi123@gmail.com',
                        ),
                        About(
                            icon: FontAwesomeIcons.locationDot,
                            title: 'Adress',
                            desc:
                                'Wonokitri, Kec. Tosari, Pasuruan, Jawa Timur 67154'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MediaSocial extends StatelessWidget {
  const MediaSocial({
    super.key,
    required this.icon,
    required this.title,
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: Get.width,
        color: Colors.white,
        child: Row(
          children: [
            Icon(
              icon,
              color: const Color(0xFF8BC342),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}

class About extends StatelessWidget {
  const About({
    super.key,
    required this.icon,
    required this.title,
    required this.desc,
  });

  final IconData icon;
  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      color: Colors.white,
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xFF8BC342),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 16),
                ),
                Text(
                  desc,
                  style: TextStyle(color: Colors.black.withOpacity(.5)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
