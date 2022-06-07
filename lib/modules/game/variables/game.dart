import 'package:dio/dio.dart';
import 'package:gerador_jogos/modules/game/dtos/loteria_response_dto.dart';
import 'package:gerador_jogos/modules/game/states/game.dart';
import 'package:get/get.dart';

mixin GameVariable {
  Dio client = Dio();

  final int lastGamesToProcess = 50;
  final int loop = 1000000;

  String? gameSelected;
  LoteriaResponseDto? loteriaResponseDto;

  List<String> lastResults = List.empty(growable: true);

  final gameState = GameState.loading.obs;
  final countOfNumbers = '0'.obs;
  final isLoadingGames = false.obs;
  final isEmptyGames = true.obs;

  RxList<int> randomGames = RxList.empty(growable: true);
  RxList<int> randomGamesWithLoop = RxList.empty(growable: true);
  RxList<int> randomGamesWithPrimos = RxList.empty(growable: true);
  RxList<int> randomGamesLastResults = RxList.empty(growable: true);
  RxList<int> randomGamesParImpar = RxList.empty(growable: true);
  RxList<int> randomGamesPadraoX = RxList.empty(growable: true);
  RxList<List<int>> randomGamesPadraoXDoisJogos = RxList.empty(growable: true);

  RxList<int> moreNumbersParImparLastResults = RxList.empty(growable: true);
  RxList<int> moreNumbersPrimosLastResults = RxList.empty(growable: true);
  RxList<int> moreNumbersLastResults = RxList.empty(growable: true);
}
