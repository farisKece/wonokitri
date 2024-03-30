import 'package:flutter/material.dart';

class PictureDetail extends StatelessWidget {
  const PictureDetail({super.key, required this.img, this.more = ' '});

  final String img;
  final String more;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print('ditekan'),
      child: Stack(
        children: [
          Container(
            width: 57,
            height: 57,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(img),
                fit: BoxFit.cover,
              ),
            ),
            child:Center(
                    child: Text(
                      more,
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
          ),
          Container(
            width: 57,
            height: 57,
            decoration: BoxDecoration(
              color: const Color(0xFF000000).withOpacity(.15),
              borderRadius: BorderRadius.circular(10),
            ),
          )
        ],
      ),
    );
  }
}
