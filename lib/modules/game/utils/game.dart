import 'dart:math';

import 'package:gerador_jogos/modules/game/controllers/game.dart';

mixin GameUtil {
  GameController get _controller => GameController.instance;

  void get clearLists {
    _controller.randomGames.clear();
    _controller.randomGamesWithLoop.clear();
    _controller.randomGamesWithPrimos.clear();
    _controller.randomGamesLastResults.clear();
    _controller.moreNumbersLastResults.clear();
    _controller.moreNumbersParImparLastResults.clear();
    _controller.moreNumbersPrimosLastResults.clear();
    _controller.randomGamesParImpar.clear();
    _controller.randomGamesPadraoX.clear();
  }

  int random(min, max) {
    return min + Random().nextInt(max - min);
  }
}
