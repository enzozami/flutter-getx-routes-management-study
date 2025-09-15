import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_route_management/navegacao_comum/await_params/await_params_page1.dart';

class AwaitParamsHomePage extends StatelessWidget {
  const AwaitParamsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Await Params'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () async {
                final result = await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return AwaitParamsPage1();
                    },
                  ),
                );
                debugPrint(result);
              },
              child: Text('Go To Page com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () async {
                final result = await Get.to(AwaitParamsPage1());
                debugPrint(result);
              },
              child: Text('Go To Page com Flutter GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
