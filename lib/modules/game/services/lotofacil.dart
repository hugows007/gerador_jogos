import 'dart:async';
import 'dart:math';

import 'package:gerador_jogos/modules/game/controllers/game.dart';

mixin LotofacilService {
  GameController get _controller => GameController.instance;

  void generateGamesLotofacil() {
    _controller.isLoadingGames.value = true;
    _controller.clearLists;
    Timer(const Duration(milliseconds: 300), () {
      _generateRandomGames();
      _generateByLastGames();
      _generatePadraoX();
      _generateRandomGamesWithLoop();
      _controller.isLoadingGames.value = false;
      _controller.isEmptyGames.value = false;
    });
  }

  Future<void> _generateRandomGames() async {
    for (int i = 0; i < int.parse(_controller.countOfNumbers.value); i++) {
      int number = _controller.random(1, 25);
      while (_controller.randomGames.contains(number)) {
        number = _controller.random(1, 25);
      }
      _controller.randomGames.add(number);
    }
    _controller.randomGames.sort();
  }

  Future<void> _generateRandomGamesWithLoop() async {
    int par = 0;

    List<int> numbers = List.empty(growable: true);
    for (int i = 0; i <= _controller.loop; i++) {
      numbers.add(_controller.random(1, 25));
    }

    List<int> numbersLastResults = List.empty(growable: true);
    for (var element in _controller.lastResults) {
      numbersLastResults.add(int.parse(element));
    }

    var mapRandom = {};
    var mapMoreSorted = {};

    for (var element in numbers) {
      if (!mapRandom.containsKey(element)) {
        mapRandom[element] = 1;
      } else {
        mapRandom[element] += 1;
      }
    }

    for (var element in numbersLastResults) {
      if (!mapMoreSorted.containsKey(element)) {
        mapMoreSorted[element] = 1;
      } else {
        mapMoreSorted[element] += 1;
      }
    }

    var sortMapByValueRandom = Map.fromEntries(mapRandom.entries.toList()
      ..sort((e1, e2) => e2.value.compareTo(e1.value)));

    var sortMapByValueMoreSorted = Map.fromEntries(
        mapMoreSorted.entries.toList()
          ..sort((e1, e2) => e2.value.compareTo(e1.value)));

    _controller.randomGamesWithPrimos.addAll([2, 3, 5, 7, 11, 13, 17, 19, 23]);

    sortMapByValueRandom.entries.map((entry) {
      if (_controller.randomGamesWithLoop.length <
          int.parse(_controller.countOfNumbers.value)) {
        _controller.randomGamesWithLoop.add(entry.key);
      }

      if (_controller.randomGamesWithPrimos.length <
              int.parse(_controller.countOfNumbers.value) &&
          !_controller.randomGamesWithPrimos.contains(entry.key)) {
        _controller.randomGamesWithPrimos.add(entry.key);
      }
    }).toList();

    sortMapByValueMoreSorted.entries.map((entry) {
      if (_controller.randomGamesParImpar.length <
              int.parse(_controller.countOfNumbers.value) &&
          (entry.key % 2) == 0 &&
          par < (int.parse(_controller.countOfNumbers.value) / 2).round()) {
        _controller.randomGamesParImpar.add(entry.key);
        par++;
      } else if (_controller.randomGamesParImpar.length <
              int.parse(_controller.countOfNumbers.value) &&
          (entry.key % 2) != 0) {
        _controller.randomGamesParImpar.add(entry.key);
      }
    }).toList();

    par = 0;

    sortMapByValueMoreSorted.entries.map((entry) {
      if (_controller.moreNumbersParImparLastResults.length <
              int.parse(_controller.countOfNumbers.value) &&
          (entry.key % 2) == 0 &&
          par < (int.parse(_controller.countOfNumbers.value) / 2).round()) {
        _controller.moreNumbersParImparLastResults.add(entry.key);
        par++;
      } else if (_controller.moreNumbersParImparLastResults.length <
              int.parse(_controller.countOfNumbers.value) &&
          (entry.key % 2) != 0) {
        _controller.moreNumbersParImparLastResults.add(entry.key);
      }
    }).toList();

    while (_controller.randomGamesLastResults.length <
        int.parse(_controller.countOfNumbers.value)) {
      var item =
          numbersLastResults[Random().nextInt(numbersLastResults.length)];

      if (!_controller.randomGamesLastResults.contains(item)) {
        _controller.randomGamesLastResults.add(item);
      }
    }

    _controller.moreNumbersPrimosLastResults
        .addAll([2, 3, 5, 7, 11, 13, 17, 19, 23]);

    while (_controller.moreNumbersPrimosLastResults.length <
        int.parse(_controller.countOfNumbers.value)) {
      var item =
          numbersLastResults[Random().nextInt(numbersLastResults.length)];

      if (!_controller.moreNumbersPrimosLastResults.contains(item)) {
        _controller.moreNumbersPrimosLastResults.add(item);
      }
    }

    _controller.randomGamesWithLoop.sort();
    _controller.moreNumbersParImparLastResults.sort();
    _controller.randomGamesLastResults.sort();
    _controller.randomGamesWithPrimos.sort();
    _controller.moreNumbersPrimosLastResults.sort();
    _controller.randomGamesParImpar.sort();
  }

  Future<void> _generatePadraoX() async {
    _controller.randomGamesPadraoX.add(List.empty(growable: true));
    _controller.randomGamesPadraoX.add(List.empty(growable: true));

    for (int i = 0; i < int.parse(_controller.countOfNumbers.value); i++) {
      int number = _controller.random(1, 25);
      while (_controller.randomGamesPadraoX[0].contains(number)) {
        number = _controller.random(1, 25);
      }
      _controller.randomGamesPadraoX[0].add(number);
    }

    for (int i = 0; i < int.parse(_controller.countOfNumbers.value); i++) {
      int number1 = _controller.random(1, 25);

      while (_controller.randomGamesPadraoX[0].contains(number1) ||
          _controller.randomGamesPadraoX[1].contains(number1)) {
        if (_controller.randomGamesPadraoX[1].length >= 9 &&
            !_controller.randomGamesPadraoX[1].contains(number1)) {
          break;
        }
        number1 = _controller.random(1, 25);
      }

      _controller.randomGamesPadraoX[1].add(number1);
    }

    _controller.randomGamesPadraoX[0].sort();
    _controller.randomGamesPadraoX[1].sort();
  }

  Future<void> _generateByLastGames() async {
    List<int> numbers = List.empty(growable: true);
    for (var element in _controller.lastResults) {
      numbers.add(int.parse(element));
    }

    var map = {};

    for (var element in numbers) {
      if (!map.containsKey(element)) {
        map[element] = 1;
      } else {
        map[element] += 1;
      }
    }

    var sortMapByValue = Map.fromEntries(
        map.entries.toList()..sort((e1, e2) => e2.value.compareTo(e1.value)));

    sortMapByValue.entries.map((entry) {
      if (_controller.moreNumbersLastResults.length <
          int.parse(_controller.countOfNumbers.value)) {
        _controller.moreNumbersLastResults.add(entry.key);
      }
    }).toList();

    _controller.moreNumbersLastResults.sort();
  }
}
