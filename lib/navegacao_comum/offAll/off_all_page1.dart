import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_route_management/navegacao_comum/offAll/off_all_page2.dart';

class OffAllPage1 extends StatelessWidget {
  const OffAllPage1({super.key});

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
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return OffAllPage2();
                    },
                  ),
                );
              },
              child: Text('Go To Page 2 com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.to(OffAllPage2());
              },
              child: Text('Go To Page 2 com Flutter GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
