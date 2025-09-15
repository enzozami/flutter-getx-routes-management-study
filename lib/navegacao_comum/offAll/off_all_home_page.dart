import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get_route_management/navegacao_comum/offAll/off_all_page1.dart';

class OffAllHomePage extends StatelessWidget {
  const OffAllHomePage({super.key});

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
                      return OffAllPage1();
                    },
                    settings: RouteSettings(name: 'Page1'),
                  ),
                );
              },
              child: Text('Go To Page 1 com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.to(OffAllPage1());
              },
              child: Text('Go To Page 1 com Flutter GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
