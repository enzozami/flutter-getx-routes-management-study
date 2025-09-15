import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get_route_management/navegacao_comum/back/back_home_page.dart';
import 'package:get_route_management/navegacao_comum/off/off_home_page.dart';
import 'package:get_route_management/navegacao_comum/offAll/off_all_home_page.dart';
import 'package:get_route_management/navegacao_comum/send_params/send_params_home_page.dart';
import 'package:get_route_management/navegacao_comum/to/to_home_page.dart';

class NavegacaoComumHomePage extends StatelessWidget {
  const NavegacaoComumHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Navegação Comum'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Get.to(ToHomePage()),
              child: Text('TO [push]'),
            ),
            ElevatedButton(
              onPressed: () => Get.to(BackHomePage()),
              child: Text('BACK [pop]'),
            ),
            ElevatedButton(
              onPressed: () => Get.to(OffHomePage()),
              child: Text('OFF [Replacement]'),
            ),
            ElevatedButton(
              onPressed: () => Get.to(OffAllHomePage()),
              child: Text('OffAll [PopAndRemoveUntil]'),
            ),
            ElevatedButton(
              onPressed: () => Get.to(SendParamsHomePage()),
              child: Text('Enviando Params'),
            ),
          ],
        ),
      ),
    );
  }
}
