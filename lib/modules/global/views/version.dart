import 'package:flutter/material.dart';
import 'package:gerador_jogos/modules/global/controllers/global.dart';
import 'package:gerador_jogos/modules/global/views/components/appbar.dart';
import 'package:gerador_jogos/modules/global/views/components/footer.dart';
import 'package:get/get.dart';

class VersionView extends GetView<GlobalController> {
  const VersionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarComponent(
        showLogo: false,
      ),
      bottomSheet: const FooterComponent(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('appName: ${controller.appName}'),
            Text('version: ${controller.version}'),
            Text('buildNumber: ${controller.buildNumber}')
          ],
        ),
      ),
    );
  }
}
