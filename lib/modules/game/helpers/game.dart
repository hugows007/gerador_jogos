import 'package:gerador_jogos/core/images.dart';
import 'package:gerador_jogos/modules/game/controllers/game.dart';
import 'package:gerador_jogos/modules/global/constants/global.dart';

mixin GameHelper {
  GameController get _controller => GameController.instance;

  String? get getImageGameSelected {
    switch (_controller.gameSelected) {
      case GlobalConstants.argLotofacil:
        return ImagesUri.lotofacil;
      default:
        return null;
    }
  }
}
