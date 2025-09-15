import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get_route_management/navegacao_comum/to/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Get.to(Page2()),
              child: Text('Page 2'),
            ),
          ],
        ),
      ),
    );
  }
}
