import 'package:flutter/material.dart';
import 'package:gerador_jogos/global_components/appbar.dart';
import 'package:gerador_jogos/global_components/footer.dart';
import 'package:gerador_jogos/global_components/loading.dart';
import 'package:gerador_jogos/modules/game/controller.dart';
import 'package:gerador_jogos/modules/game/pages/components/game.dart';
import 'package:gerador_jogos/modules/game/states.dart';
import 'package:get/get.dart';

class GamePage extends GetView<GameController> {
  const GamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarComponent(),
      bottomSheet: const FooterComponent(),
      body: Obx(
        () => controller.gameState.value == GameState.loading
            ? const LoadingComponent()
            : const GameComponent(),
      ),
    );
  }
}
