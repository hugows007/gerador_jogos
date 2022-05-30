import 'package:gerador_jogos/modules/game/bindings/game.dart';
import 'package:gerador_jogos/modules/game/helpers/game.dart';
import 'package:gerador_jogos/modules/game/services/game.dart';
import 'package:gerador_jogos/modules/game/services/requests/game.dart';
import 'package:gerador_jogos/modules/game/variables/game.dart';
import 'package:get/get.dart';

class GameController extends GetxController
    with GameService, GameRequest, GameVariable, GameHelper {
  static GameController get instance {
    if (Get.isRegistered<GameController>()) {
      return Get.find();
    } else {
      GameBinding.init();
      return Get.find();
    }
  }

  @override
  onReady(){
    init();
  }
}
