import 'package:gerador_jogos/modules/game/controllers/game.dart';
import 'package:gerador_jogos/modules/game/states/game.dart';
import 'package:gerador_jogos/modules/global/constants/global.dart';
import 'package:get/get.dart';

mixin GameService {
  GameController get _controller => GameController.instance;

  void init() {
    _controller.gameSelected = Get.arguments;
    switch (_controller.gameSelected) {
      case GlobalConstants.argLotofacil:
        _controller.requestChargeLastResultLotofacil().then((_) => _controller
            .requestLastResultsLotofacil()
            .then((_) => GameState.games.set));
        break;
      default:
        null;
    }
  }
}
