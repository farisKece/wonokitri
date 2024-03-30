import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wonokitri/app/data/models/facilities.dart';

class DetailHomestayController extends GetxController {
  final String paragraf =
      'Blue Lagoon Drive from Reykjavík, the capital of Iceland, to the southeast for about an houryou can reach Blue Lagoon, the famous';

  final List<Facilities> facilities = [
    Facilities(iconFacilities: Icons.wifi, desc: 'Wifi'),
    Facilities(iconFacilities: Icons.dinner_dining_outlined, desc: 'Dinner'),
    Facilities(iconFacilities: Icons.bathtub_outlined, desc: '1 Tub'),
    Facilities(iconFacilities: Icons.pool_outlined, desc: 'Pool'),
  ];
}
