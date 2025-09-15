import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:get_route_management/navegacao_comum/back/back_page1.dart';

class BackHomePage extends StatelessWidget {
  const BackHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back Home'),
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
                      return BackPage1();
                    },
                  ),
                );
              },
              child: Text('Go To Page com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.to(BackPage1());
              },
              child: Text('Go To Page com Flutter GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
