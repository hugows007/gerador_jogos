import 'package:dio/dio.dart';
import 'package:gerador_jogos/core/url.dart';
import 'package:gerador_jogos/modules/game/controllers/game.dart';
import 'package:gerador_jogos/modules/game/dtos/lotofacil_response_dto.dart';

mixin GameRequest {
  GameController get _controller => GameController.instance;

  Future<void> requestChargeLastResultLotofacil() async {
    Response response = await _controller.client.get(Url.urlLotofacil);
    _controller.lotofacilResponseDto =
        LotofacilResponseDto.fromJson(response.data);
  }

  Future<void> requestLastResultsLotofacil() async {
    num lastGameNumber = _controller.lotofacilResponseDto!.numero!;
    for (int i = 1; i <= _controller.lastGamesToProcess; i++) {
      Response response =
          await _controller.client.get('${Url.urlLotofacil}/$lastGameNumber');
      _controller.lastResults
          .add(LotofacilResponseDto.fromJson(response.data).listaDezenas);

      lastGameNumber--;
    }
  }
}
