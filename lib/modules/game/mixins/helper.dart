import 'package:flutter/material.dart';
import 'package:gerador_jogos/core/images.dart';
import 'package:gerador_jogos/modules/game/controller.dart';
import 'package:gerador_jogos/modules/game/pages/components/widget/lotofacil.dart';
import 'package:gerador_jogos/modules/global/constants/global.dart';

mixin GameHelper {
  GameController get _controller => GameController.instance;

  Widget get getGameComponent {
    switch (_controller.gameSelected) {
      case GlobalConstants.gameLotofacil:
        return const LotofacilComponent();
      default:
        return const SizedBox();
    }
  }

  String? get buildImageGameSelected {
    switch (_controller.gameSelected) {
      case GlobalConstants.gameLotofacil:
        return ImagesUri.lotofacil;
      default:
        return null;
    }
  }

  String get numberDropdown {
    switch (_controller.gameSelected) {
      case GlobalConstants.gameLotofacil:
        return '15';
      default:
        return '0';
    }
  }

  dynamic get _itemsDropdown {
    switch (_controller.gameSelected) {
      case GlobalConstants.gameLotofacil:
        return <String>['15', '16', '17', '18', '19', '20'];
      default:
        return <String>[];
    }
  }

  Widget buildGenerateOptions(Function? callback) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 5),
              child: Text(
                'Selecione a quantidade de números: ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              width: 60,
              alignment: Alignment.center,
              child: DropdownButton<String>(
                isExpanded: true,
                value: _controller.countOfNumbers.value,
                icon: const Icon(Icons.arrow_downward),
                style: const TextStyle(color: Color(0xff277eb6), fontSize: 18),
                onChanged: (String? newValue) {
                  _controller.countOfNumbers.value = newValue!;
                },
                underline: const SizedBox(),
                items: _itemsDropdown
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 200,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff277eb6),
                textStyle: const TextStyle(fontSize: 18)),
            onPressed: () => callback!(),
            child: const Text('Gerar!'),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: SizedBox(),
        ),
      ],
    );
  }
}
