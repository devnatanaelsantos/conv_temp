import 'package:app_graus/controllers/conv_temp_controller.dart';
import 'package:flutter/material.dart';

class IconGraus extends StatelessWidget {
  const IconGraus({
    Key? key,
    required this.convTempController,
    required this.iconTemp,
  }) : super(key: key);

  final Image iconTemp;

  final ConvTempController convTempController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 48,
      child: iconTemp,
    );
  }
}
