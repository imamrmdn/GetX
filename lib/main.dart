import 'package:GetX_example/const/theme.dart';
import 'package:GetX_example/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: tealColor),
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      getPages: [
        GetPage(name: '/', page: () => HomeScreen()),
        GetPage(name: '/materi1', page: () => Materi1()),
        GetPage(name: '/materi2', page: () => Materi2()),
        GetPage(name: '/materi3', page: () => Materi3()),
        GetPage(name: '/materi4', page: () => Materi4()),
      ],
    );
  }
}
