import 'package:flutter/material.dart';
import 'package:gerador_jogos/modules/game/controllers/game.dart';
import 'package:gerador_jogos/modules/game/states/game.dart';
import 'package:gerador_jogos/modules/game/views/components/game.dart';
import 'package:gerador_jogos/modules/global/components/appbar.dart';
import 'package:gerador_jogos/modules/global/components/footer.dart';
import 'package:gerador_jogos/modules/global/components/loading.dart';
import 'package:get/get.dart';

class GameView extends GetView<GameController> {
  const GameView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarComponent(title: 'Voltar'),
      bottomSheet: const FooterComponent(),
      body: Obx(
        () => controller.gameState.value == GameState.loading
            ? const LoadingComponent()
            : const GameComponent(),
      ),
    );
  }
}
