import 'package:app_graus/models/conv_temp_model.dart';
import 'package:flutter/material.dart';

class ConvtTempController {
  final grauController = TextEditingController();

  bool trocaIcon = false;

  ValueNotifier<Image> iconCel =
      ValueNotifier(Image.asset('lib/assets/images/celsius.png'));

  ValueNotifier<Image> iconFah =
      ValueNotifier(Image.asset('lib/assets/images/fahrenheit.png'));

  ValueNotifier<bool> btConv = ValueNotifier(false);

  bool visibilityTxt = false;

  ValueNotifier<ConvTempModel> result =
      ValueNotifier(ConvTempModel(grausResult: 0));

  ConvtTempController() {
    grauController.addListener(() {
      btConv.value = grauController.value.text.isNotEmpty;
    });
  }

  double _convGraus() {
    try {
      double grausInc =
          double.parse(grauController.value.text.replaceAll(',', '.'));

      if (double.parse(grauController.value.text) <= 0) {
        debugPrint('Não é valido');
        return 0;
      }

      if (trocaIcon == true) {
        double resultado = (grausInc - 32) * 5 / 9;
        return resultado;
      } else {
        double resultado = (grausInc * 9 / 5) + 32;
        return resultado;
      }
    } catch (e) {
      debugPrint('Não é valido');
      return 0;
    }
  }

  ConvTempModel processarGraus() {
    ConvTempModel convTempModel = ConvTempModel(grausResult: _convGraus());

    return convTempModel;
  }

  processaResult() {
    result.value = processarGraus();

    if (_convGraus() < 0 || _convGraus() > 0) {
      visibilityTxt = true;
    }
    if (grauController.value.text.isNotEmpty == false) {
      visibilityTxt = false;
    }
  }

  alteraConv() {
    trocaIcon = !trocaIcon;
    visibilityTxt = false;

    if (trocaIcon) {
      iconCel.value = Image.asset('lib/assets/images/fahrenheit.png');
      iconFah.value = Image.asset('lib/assets/images/celsius.png');
    } else {
      iconCel.value = Image.asset('lib/assets/images/celsius.png');
      iconFah.value = Image.asset('lib/assets/images/fahrenheit.png');
    }
  }

  double validaAlert() {
    double retorno = _convGraus();
    return retorno;
  }
}
