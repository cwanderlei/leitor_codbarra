import 'package:flutter/material.dart';
import 'package:leitor_codbarra/home_page_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage() {
    Get.put(HomePageController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BarCode Scanner - Datarey'),
      ),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'código de barras:',
              style: Get.theme.textTheme.headline4,
            ),
            GetBuilder<HomePageController>(
              builder: (controller) {
                return Text(
                  controller.valorCodigoBarras,
                  style: Get.theme.textTheme.headline5,
                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextButton.icon(
              icon: Image.asset(
                'assets/icon.png',
                width: 50,
              ),
              label: Text('Ler Código de Barras', style: Get.theme.textTheme.headline6),
              onPressed: () => Get.find<HomePageController>().escanearCodigoBarras(),
            )
          ],
        ),
      ),
    );
  }
}
