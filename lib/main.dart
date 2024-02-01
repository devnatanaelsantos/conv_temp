import 'package:app_graus/views/temp_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue, // Cor primária do tema
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      title: 'Conversor de temperatura',
      debugShowCheckedModeBanner: false,
      home: const ConvTempPage(),
    );
  }
}
