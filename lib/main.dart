import 'package:app_graus/views/conv_temp_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Conversor de temperatura',
      debugShowCheckedModeBanner: false,
      home: ConvTempPage(),
    );
  }
}
