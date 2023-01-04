import 'package:gerador_jogos/modules/game/binding.dart';
import 'package:gerador_jogos/modules/game/pages/game.dart';
import 'package:gerador_jogos/modules/global/pages/version.dart';
import 'package:gerador_jogos/modules/home/views/home.dart';
import 'package:get/get.dart';

class Routes {
  static const home = '/';
  static const games = '/jogos';
  static const version = '/version';

  static get routes {
    return [
      GetPage(
        name: home,
        page: () => const HomePage(),
      ),
      GetPage(
        name: games,
        page: () => const GamePage(),
        binding: GameBinding(),
      ),
      GetPage(
        name: version,
        page: () => const VersionPage(),
      ),
    ];
  }
}
