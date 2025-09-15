import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get_route_management/navegacao_comum/off/off_page1.dart';

class OffHomePage extends StatelessWidget {
  const OffHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Off Home Page'),
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
                      return OffPage1();
                    },
                  ),
                );
              },
              child: Text('Go To Page 1 com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.to(OffPage1());
              },
              child: Text('Go To Page 1 com Flutter GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
