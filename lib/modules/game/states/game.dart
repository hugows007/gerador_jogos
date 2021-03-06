import 'package:gerador_jogos/modules/game/controllers/game.dart';

enum GameState {
  loading,
  games,
}

extension GameStateExtension on GameState {
  GameController get _controller => GameController.instance;
  get set {
    _controller.gameState.value = this;
  }
}
