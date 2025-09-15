import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class SendParamsPage1 extends StatelessWidget {
  const SendParamsPage1({super.key});

  @override
  Widget build(BuildContext context) {
    final paramNative = ModalRoute.of(context)?.settings.arguments ?? 'Param nao enviado';

    final paramGetX = Get.arguments ?? 'Param nao enviado';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Recebendo param'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nativo: $paramNative'),
            Text('Get: $paramGetX'),
          ],
        ),
      ),
    );
  }
}
