import 'package:pengujian_chat/state_util.dart';
import 'package:flutter/material.dart';

import 'module/home/view/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SiBoKir',
      navigatorKey: Get.navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeView(title: 'SiBoKir'),
    );
  }
}
