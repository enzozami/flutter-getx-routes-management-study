import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_route_management/navegacao_comum/offAll/off_all_page3.dart';

class OffAllPage2 extends StatelessWidget {
  const OffAllPage2({super.key});

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
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) {
                      return OffAllPage3();
                    },
                  ),
                  (route) => false,
                );
              },
              child: Text('Go To Page 3 [excluindo toda arvore de navegacao] com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) {
                      return OffAllPage3();
                    },
                  ),
                  // Volta para a home page
                  ModalRoute.withName('/'),
                );
              },
              child:
                  Text('Go To Page 3 [excluindo parte da arvore de navegacao] com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.offAll(OffAllPage3());
              },
              child: Text('Go To Page 3 [excluindo toda arvore de navegacao] com Flutter GetX'),
            ),
            TextButton(
              onPressed: () {
                Get.offAll(
                  OffAllPage3(),
                  predicate: ModalRoute.withName('/'),
                );
              },
              child: Text('Go To Page 3 [excluindo parte arvore de navegacao] com Flutter GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
