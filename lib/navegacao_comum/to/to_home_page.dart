import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_route_management/navegacao_comum/to/page1.dart';

class ToHomePage extends StatelessWidget {
  const ToHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Home Page'),
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
                      return Page1();
                    },
                  ),
                );
              },
              child: Text('Go To Page com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.to(Page1());
              },
              child: Text('Go To Page com Flutter GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
