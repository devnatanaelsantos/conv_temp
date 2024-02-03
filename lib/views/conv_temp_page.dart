import 'package:app_graus/controllers/conv_temp_controller.dart';
import 'package:app_graus/widgets/conv_result.dart';
import 'package:app_graus/widgets/entrada_temp.dart';
import 'package:app_graus/widgets/icon_graus.dart';
import 'package:flutter/material.dart';

class ConvTempPage extends StatefulWidget {
  const ConvTempPage({super.key});

  @override
  State<ConvTempPage> createState() => _ConvTempPageState();
}

class _ConvTempPageState extends State<ConvTempPage> {
  ConvtTempController convTempController = ConvtTempController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFE5302),
        centerTitle: true,
        title: const Text(
          'Conversor de temperatura',
          style: TextStyle(
              color: Color(0xFF121E2C),
              fontWeight: FontWeight.w600,
              fontSize: 25),
        ),
      ),
      backgroundColor: const Color(0xFF121E2C),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //icone celcius
              ValueListenableBuilder(
                valueListenable: convTempController.iconCel,
                builder: (context, value, __) {
                  return IconGraus(
                      convTempController: convTempController,
                      iconTemp: convTempController.iconCel.value);
                },
              ),
              const SizedBox(
                width: 8,
              ),
              //
              //Entrada da temperatura
              EntradaTemp(convTempController: convTempController),
              const SizedBox(
                width: 8,
              ),
              //botão alterar conversão
              GestureDetector(
                child: GestureDetector(
                  onTap: () {
                    convTempController.alteraConv();
                  },
                  child: SizedBox(
                    height: 36,
                    width: 36,
                    child: Image.asset('lib/assets/images/alterar.png'),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              //icone fahrenheit
              ValueListenableBuilder(
                valueListenable: convTempController.iconFah,
                builder: (context, value, __) {
                  return IconGraus(
                      convTempController: convTempController,
                      iconTemp: convTempController.iconFah.value);
                },
              ),
              const SizedBox(
                width: 8,
              ),
              ConvResult(convTempController: convTempController),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //botõa limpar
              SizedBox(
                height: 44,
                width: 136,
                child: ElevatedButton(
                  onPressed: () {
                    convTempController.grauController.clear();
                    convTempController.processaResult();
                  },
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Color(0xFFFE5302))),
                  child: const Text(
                    'Limpar',
                    style: TextStyle(color: Color(0xFFEEF8FC), fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              //botãoo lonverter
              SizedBox(
                height: 44,
                width: 136,
                child: ValueListenableBuilder(
                  valueListenable: convTempController.btConv,
                  builder: (context, value, _) {
                    return ElevatedButton(
                      onPressed: !value
                          ? null
                          : () {
                              if (convTempController.validaAlert() == 0) {
                                showDialog(
                                  barrierDismissible: false,
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      backgroundColor: const Color(0xFF121E2C),
                                      title: const Center(
                                        child: Text(
                                          'Temperatura Inválida',
                                          style: TextStyle(
                                            color: Color(0xFFFE5302),
                                            fontSize: 25,
                                          ),
                                        ),
                                      ),
                                      content: const Text(
                                        textAlign: TextAlign.center,
                                        'A temperatura informada não é válida\n Tente algo como 18º ou 22.6º',
                                        style: TextStyle(
                                          color: Color(0xFFEEF8FC),
                                          fontSize: 16,
                                        ),
                                      ),
                                      actions: [
                                        Center(
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            style: const ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll<
                                                      Color>(
                                                Color(0xFFFE5302),
                                              ),
                                            ),
                                            child: const Text(
                                              'Tentar de novo',
                                              style: TextStyle(
                                                color: Color(0xFFEEF8FC),
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              } else {
                                convTempController.processaResult();
                              }
                            },
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                          Color(0xFFFE5302),
                        ),
                      ),
                      child: const Text(
                        'Conerter',
                        style:
                            TextStyle(color: Color(0xFFEEF8FC), fontSize: 18),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
