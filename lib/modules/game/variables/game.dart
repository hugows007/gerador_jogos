import 'package:dio/dio.dart';
import 'package:gerador_jogos/modules/game/dtos/lotofacil_response_dto.dart';
import 'package:gerador_jogos/modules/game/states/game.dart';
import 'package:get/get.dart';

mixin GameVariable {
  Dio client = Dio();

  final int lastGamesToProcess = 10;

  String? gameSelected;
  LotofacilResponseDto? lotofacilResponseDto;

  List<List<String>?> lastResults = List.empty(growable: true);

  final gameState = GameState.loading.obs;
}
