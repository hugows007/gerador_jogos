import 'package:gerador_jogos/modules/game/controller.dart';
import 'package:get/get.dart';

class GameBinding implements Bindings {
  @override
  void dependencies() {
    init();
  }

  static void init() {
    Get.lazyPut<GameController>(
      () => GameController(),
    );
  }
}
