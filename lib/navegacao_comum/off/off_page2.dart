import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_route_management/navegacao_comum/off/off_page3.dart';

class OffPage2 extends StatelessWidget {
  const OffPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) {
                      return OffPage3();
                    },
                  ),
                );
              },
              child: Text('Go To Page 3 com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.off(OffPage3());
              },
              child: Text('Go To Page 3 com Flutter GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
