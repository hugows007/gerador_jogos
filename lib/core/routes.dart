import 'package:gerador_jogos/modules/game/bindings/game.dart';
import 'package:gerador_jogos/modules/game/views/game.dart';
import 'package:gerador_jogos/modules/home/views/home.dart';
import 'package:get/get.dart';

class Routes {
  static const home = '/';
  static const games = '/jogos';

  static get routes {
    return [
      GetPage(
        name: home,
        page: () => const HomeView(),
      ),
      GetPage(
        name: games,
        page: () => const GameView(),
        binding: GameBinding(),
      ),
    ];
  }
}
