import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DaftarTiketController extends GetxController {
  var selectedDate = ''.obs;
  var selectedTourGuide = ''.obs;
  var selectedHomestay = ''.obs;
  // late TextEditingController peopleC;
  final String desc =
      'Lorem ipsum odor amet, consectetuer adipiscing elit. Mi sodales nec iaculis lorem rutrum eget maximus convallis. Condimentum nunc suspendisse magna vestibulum ornare montes; venenatis tincidunt nisl.';
  var count = 0.obs;
  List<String> tourGuide = ['asep', 'ujang', 'udil', 'albert'];
  List<String> genders = ['Male', 'Female', 'Other'];

  List<String> listHomestay = [
    'Homestay',
    'Hotel',
    'Villa',
  ];

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != DateTime.now()) {
      // selectedDate.value = picked.toLocal().toString().split(' ')[0]; // Mengambil tanggal dalam format 'yyyy-MM-dd'
      selectedDate.value = DateFormat('dd/MM/yyyy').format(picked);
    }
  }

  void incremen() {
    count.value++;
  }

  void decrement() {
    if (count.value > 3) {
      count.value--;
    }
  }

  void setSelectedtourGuide(String value) {
    selectedTourGuide.value = value;
  }

  void setSelectedHomestay(String value) {
    selectedHomestay.value = value;
  }

  @override
  void onInit() {
    // peopleC = TextEditingController();
    super.onInit();
  }
}
