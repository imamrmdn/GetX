import 'package:GetX_example/widget/widget_methods.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Materi {
  final String gambar;
  final String tanggal;
  final String title;
  final Function ontap;

  Materi({
    @required this.gambar,
    @required this.tanggal,
    @required this.title,
    @required this.ontap,
  });
}

List<Materi> listMateri = [
  Materi(
    gambar: 'assets/book1.png',
    tanggal: '${dateFormat(DateTime.now())}',
    title: 'Materi 1 SnackBar, Dialog, And BottomSheet',
    ontap: () {
      Get.back();
      Get.toNamed('/materi1');
    },
  ),
  Materi(
    gambar: 'assets/book2.png',
    tanggal: '16, September 2020',
    title: 'Materi 2 Navigation Send Data to Next Page or Screen',
    ontap: () {
      Get.back();
      Get.toNamed('/materi2', arguments: {
        'materi_2': 'Navigation with GetX',
        'materi_1': 'Snackbar, Dialog & BottomSheet',
        'materi_3': 'GetX StateManagement',
      });
    },
  ),
  Materi(
    gambar: 'assets/book3.png',
    tanggal: '10, Agustus 2020',
    title: 'Materi 3 GetBuilder Example',
    ontap: () {
      Get.toNamed('/materi3');
    },
  ),
  Materi(
    gambar: 'assets/book4.png',
    tanggal: '21, Agustus 2020',
    title: 'Materi 4 StateManagement GetX & Obx',
    ontap: () {
      Get.toNamed('/materi4');
    },
  ),
];
