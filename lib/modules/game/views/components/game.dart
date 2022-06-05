import 'package:flutter/material.dart';
import 'package:gerador_jogos/modules/game/controllers/game.dart';
import 'package:gerador_jogos/modules/game/views/components/generated.dart';
import 'package:gerador_jogos/modules/game/views/components/result.dart';
import 'package:gerador_jogos/modules/global/components/loading.dart';
import 'package:get/get.dart';

class GameComponent extends GetView<GameController> {
  const GameComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Image(
                      height: 80,
                      image: AssetImage(controller.buildImageGameSelected!),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Text(
                      'Último resultado da ${controller.gameSelected}: ',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          'Jogo número ${controller.loteriaResponseDto!.numero}\n'
                          'Data do sorteio ${controller.loteriaResponseDto!.dataApuracao!}\n',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                          textAlign: TextAlign.center),
                      Wrap(
                        children: controller.loteriaResponseDto!.listaDezenas!
                            .map((value) => Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2.0),
                                  child: ResultComponent(
                                    number: value,
                                  ),
                                ))
                            .toList(),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    child: Divider(),
                  ),
                ],
              ),
              Obx(
                () => controller.buildGenerateOptions(controller.getCallback),
              ),
              Obx(
                () => controller.isLoadingGames.value
                    ? const LoadingComponent()
                    : controller.isEmptyGames.value
                        ? const SizedBox()
                        : Column(
                            children: [
                              GenerateGameComponent(
                                generatedGame: controller.randomGames,
                                subtitle:
                                    'Jogo gerado de forma randômica e simples',
                                title: 'Jogo randômico',
                              ),
                              GenerateGameComponent(
                                generatedGame: controller.randomGamesWithLoop,
                                subtitle:
                                    'Jogo gerado baseado nos números que mais saem em um loop de ${controller.loop}',
                                title: 'Jogo randômico com incidência de loop',
                              ),
                              GenerateGameComponent(
                                generatedGame: controller.randomGamesWithPrimos,
                                subtitle:
                                    'Jogo gerado baseado nos números que mais saem em um loop de ${controller.loop} forçando números primos',
                                title:
                                    'Jogo randômico com incidência de loop com números primos',
                              ),
                              GenerateGameComponent(
                                generatedGame: controller.randomGamesParImpar,
                                subtitle:
                                    'Jogo gerado baseado nos números que mais saem em um loop de ${controller.loop}, balanceando impares e pares',
                                title:
                                    'Jogo randômico com incidência de loop impares e pares',
                              ),
                              GenerateGameComponent(
                                generatedGame:
                                    controller.randomGamesLastResults,
                                subtitle:
                                    'Jogo gerado de forma randômica baseado nos números que mais saíram nos últimos ${controller.lastGamesToProcess} sorteios',
                                title: 'Jogo randômico em sorteios recentes',
                              ),
                              GenerateGameComponent(
                                generatedGame:
                                    controller.moreNumbersPrimosLastResults,
                                subtitle:
                                    'Jogo gerado de forma randômica baseado nos números que mais saíram nos últimos ${controller.lastGamesToProcess} sorteios forçando números primos',
                                title:
                                    'Jogo com incidência em sorteios recentes com números primos',
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 50, left: 20, right: 20),
                                child: Column(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Text(
                                        'Jogos com mudanças apenas com novos sorteios',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red),
                                      ),
                                    ),
                                    Divider(),
                                  ],
                                ),
                              ),
                              GenerateGameComponent(
                                generatedGame:
                                    controller.moreNumbersLastResults,
                                subtitle:
                                    'Jogo gerado baseado nos números que mais saíram nos últimos ${controller.lastGamesToProcess} sorteios',
                                title:
                                    'Jogo com incidência em sorteios recentes',
                              ),
                              GenerateGameComponent(
                                generatedGame:
                                    controller.moreNumbersParImparLastResults,
                                subtitle:
                                    'Jogo gerado baseado nos números que mais saíram nos últimos ${controller.lastGamesToProcess} sorteios, balanceando impares e pares',
                                title:
                                    'Jogo com incidência em sorteios recentes, balanceando impares e pares',
                              ),
                            ],
                          ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
