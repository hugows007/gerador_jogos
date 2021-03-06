import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:gerador_jogos/core/cookie_manager.dart';
import 'package:gerador_jogos/core/url.dart';
import 'package:gerador_jogos/modules/game/controllers/game.dart';
import 'package:gerador_jogos/modules/game/dtos/loteria_response_dto.dart';
import 'package:gerador_jogos/modules/global/constants/global.dart';

mixin GameRequest {
  GameController get _controller => GameController.instance;

  Future<void> requestChargeLastResult(String url) async {
    Response response =
        await _controller.client.get(url);
    _controller.loteriaResponseDto = LoteriaResponseDto.fromJson(jsonDecode(response.data['contents']));
  }

  Future<void> requestLastResults(num lastGameNumber) async {
    for (int i = 1; i <= _controller.lastGamesToProcess; i++) {
      Response response = await _controller.client.get(
          '${Url.urlLotofacil}/$lastGameNumber');
      for (var element
          in LoteriaResponseDto.fromJson(jsonDecode(response.data['contents'])).listaDezenas!) {
        _controller.lastResults.add(element);
      }

      lastGameNumber--;
    }

    DateTime now = DateTime.now();
    DateTime expiration = (now.hour <= 21 && now.minute <= 30)
        ? DateTime(now.year, now.month, now.day, 21, 30, 00)
        : DateTime(now.year, now.month, now.day, 23, 59, 00);
    Duration diff = expiration.difference(now);

    CookieManager.addToCookie(GlobalConstants.cookieLastResults,
        json.encode(_controller.lastResults), diff.inSeconds);
  }
}
