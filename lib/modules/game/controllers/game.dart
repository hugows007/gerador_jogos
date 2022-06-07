import 'dart:convert';

import 'package:gerador_jogos/core/cookie_manager.dart';
import 'package:gerador_jogos/core/url.dart';
import 'package:gerador_jogos/modules/game/bindings/game.dart';
import 'package:gerador_jogos/modules/game/helpers/game.dart';
import 'package:gerador_jogos/modules/game/services/lotofacil.dart';
import 'package:gerador_jogos/modules/game/services/requests/game.dart';
import 'package:gerador_jogos/modules/game/states/game.dart';
import 'package:gerador_jogos/modules/game/utils/game.dart';
import 'package:gerador_jogos/modules/game/variables/game.dart';
import 'package:gerador_jogos/modules/global/constants/global.dart';
import 'package:get/get.dart';

class GameController extends GetxController
    with LotofacilService, GameRequest, GameVariable, GameHelper, GameUtil {
  static GameController get instance {
    if (Get.isRegistered<GameController>()) {
      return Get.find();
    } else {
      GameBinding.init();
      return Get.find();
    }
  }

  Function? get getCallback {
    switch (gameSelected) {
      case GlobalConstants.gameLotofacil:
        return generateGamesLotofacil;
      default:
        return null;
    }
  }

  @override
  onReady() {
    gameSelected = CookieManager.getCookie(GlobalConstants.cookieGameType);
    countOfNumbers.value = numberDropdown;

    switch (gameSelected) {
      case GlobalConstants.gameLotofacil:
        requestChargeLastResult(Url.urlLotofacil).then((_) {
          dynamic cookieLastResults =
              CookieManager.getCookie(GlobalConstants.cookieLastResults);
          if (cookieLastResults != null) {
            lastResults = List<String>.from(json.decode(cookieLastResults));
            GameState.games.set;
          } else {
            requestLastResults(loteriaResponseDto!.numero!)
                .then((_) => GameState.games.set);
          }
        });
        break;
      default:
        null;
    }
  }
}
