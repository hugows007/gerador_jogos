import 'package:flutter/material.dart';
import 'package:gerador_jogos/modules/global/controller.dart';
import 'package:gerador_jogos/global_components/appbar.dart';
import 'package:gerador_jogos/global_components/footer.dart';
import 'package:get/get.dart';

class VersionPage extends GetView<GlobalController> {
  const VersionPage({Key? key}) : super(key: key);

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
