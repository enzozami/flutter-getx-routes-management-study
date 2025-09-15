import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class BackPage1 extends StatelessWidget {
  const BackPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Voltar com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text('Voltar com Flutter GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
