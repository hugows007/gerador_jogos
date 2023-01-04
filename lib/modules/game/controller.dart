import 'dart:convert';

import 'package:gerador_jogos/core/cookie_manager.dart';
import 'package:gerador_jogos/core/url.dart';
import 'package:gerador_jogos/modules/game/binding.dart';
import 'package:gerador_jogos/modules/game/mixins/helper.dart';
import 'package:gerador_jogos/modules/game/mixins/services/lotofacil.dart';
import 'package:gerador_jogos/modules/game/mixins/api.dart';
import 'package:gerador_jogos/modules/game/states.dart';
import 'package:gerador_jogos/modules/game/mixins/util.dart';
import 'package:gerador_jogos/modules/game/mixins/variable.dart';
import 'package:gerador_jogos/modules/global/constants/global.dart';
import 'package:get/get.dart';

class GameController extends GetxController
    with LotofacilService, GameApi, GameVariable, GameHelper, GameUtil {
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
        _loadLotofacil;
        break;
      default:
        null;
    }
  }

  get _loadLotofacil {
    loadingGamesText.value = 'Carregando último resultado...';
    chargeLastResult(Url.urlLotofacil).then((_) {
      loadingGamesText.value = 'Concluído!';
      dynamic cookieLastResults =
      CookieManager.getCookie(GlobalConstants.cookieLastResults);
      if (cookieLastResults != null) {
        lastResults = List<String>.from(json.decode(cookieLastResults));
        GameState.games.set;
      } else {
        loadingGamesText.value = 'Carregando jogos... aguarde!';
        Future.delayed(const Duration(seconds: 10), () => loadingGamesText.value = 'São muitos jogos... mas estamos terminando!');
        Future.delayed(const Duration(seconds: 20), () => loadingGamesText.value = 'Caramba... não deveria demorar tanto... só mais um instante :)');
        chargeLastResults(loteriaResponseDto!.numero!)
            .then((_) => GameState.games.set).catchError((e, s) {
          loadingGamesText.value = 'Ocorreu um erro ao carregar os jogos.';
          GameState.error.set;
        });
      }
    }).catchError((e, s) {
      loadingGamesText.value = 'Ocorreu um erro ao carregar último resultado.';
      GameState.error.set;
    });
  }
}
