import 'package:app_graus/controllers/conv_temp_controller.dart';
import 'package:flutter/material.dart';

class EntradaTemp extends StatelessWidget {
  const EntradaTemp({
    super.key,
    required this.convTempController,
  });

  final ConvTempController convTempController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xFFEEF8FC),
        ),
      ),
      child: TextField(
        controller: convTempController.grauController,
        keyboardType: const TextInputType.numberWithOptions(),
        style: const TextStyle(fontSize: 18, color: Color(0xFFEEF8FC)),
        textAlign: TextAlign.center,
        decoration: const InputDecoration(
          hintText: 'Ex.: 37º',
          hintStyle: TextStyle(
            color: Color(0xFF9BA2A5),
          ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
