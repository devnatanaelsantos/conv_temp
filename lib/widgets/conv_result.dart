import 'package:app_graus/controllers/conv_temp_controller.dart';
import 'package:flutter/material.dart';

class ConvResult extends StatelessWidget {
  const ConvResult({
    super.key,
    required this.convTempController,
  });

  final ConvTempController convTempController;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: convTempController.result,
      builder: (context, value, __) {
        return Visibility(
          visible: convTempController.visibilityTxt,
          child: Text(
            convTempController.result.value.grausResult.toStringAsFixed(2),
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Color(0xFFEEF8FC),
            ),
          ),
        );
      },
    );
  }
}
