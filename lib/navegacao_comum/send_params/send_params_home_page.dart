import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_route_management/navegacao_comum/send_params/send_params_page1.dart';

class SendParamsHomePage extends StatelessWidget {
  const SendParamsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enviando Params'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return SendParamsPage1();
                    },
                    settings: RouteSettings(
                      arguments: 'Parametro pelo flutter nativo',
                    ),
                  ),
                );
              },
              child: Text('Go To Page com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.to(SendParamsPage1(), arguments: 'Parametro pelo GetX');
              },
              child: Text('Go To Page com Flutter GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
