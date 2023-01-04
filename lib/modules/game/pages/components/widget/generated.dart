import 'package:flutter/material.dart';
import 'package:gerador_jogos/modules/game/controller.dart';
import 'package:gerador_jogos/modules/game/pages/components/widget/result.dart';
import 'package:get/get.dart';

class GenerateGameComponent extends GetView<GameController> {
  final String title;
  final String subtitle;
  final List<int> generatedGame;

  const GenerateGameComponent({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.generatedGame,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50.0),
      child: Column(
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Wrap(
            alignment: WrapAlignment.center,
            children: generatedGame
                .map((value) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: ResultComponent(
                        number: value.toString().padLeft(2, '0'),
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
