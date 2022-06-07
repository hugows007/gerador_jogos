import 'package:flutter/material.dart';
import 'package:gerador_jogos/modules/game/controllers/game.dart';
import 'package:gerador_jogos/modules/game/views/components/widget/generated.dart';
import 'package:get/get.dart';

class LotofacilComponent extends GetView<GameController> {
  const LotofacilComponent({Key? key}) : super(key: key);

  final double gamesPadding = 30.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
              bottom: 50, left: 20, right: 20),
          child: Column(
            children: const [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Jogos randômicos',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Divider( thickness: 4),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Padding(
                padding: EdgeInsets.all(gamesPadding),
                child: GenerateGameComponent(
                  generatedGame: controller.randomGames,
                  subtitle:
                  'Jogo gerado de forma randômica e simples',
                  title: 'Jogo randômico',
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsets.all(gamesPadding),
                child: GenerateGameComponent(
                  generatedGame:
                  controller.randomGamesWithLoop,
                  subtitle:
                  'Jogo gerado baseado nos números que mais saem em um loop de ${controller.loop}',
                  title:
                  'Jogo randômico com incidência de loop',
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Padding(
                padding: EdgeInsets.all(gamesPadding),
                child: GenerateGameComponent(
                  generatedGame:
                  controller.randomGamesWithPrimos,
                  subtitle:
                  'Jogo gerado baseado nos números que mais saem em um loop de ${controller.loop} forçando números primos',
                  title:
                  'Jogo randômico com incidência de loop com números primos',
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsets.all(gamesPadding),
                child: GenerateGameComponent(
                  generatedGame:
                  controller.randomGamesParImpar,
                  subtitle:
                  'Jogo gerado baseado nos números que mais saem em um loop de ${controller.loop}, balanceando impares e pares',
                  title:
                  'Jogo randômico com incidência de loop impares e pares',
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
              bottom: 50, left: 20, right: 20),
          child: Column(
            children: const [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Jogos randômicos: padrão cruzado, com dois jogos',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Padding(
                padding: EdgeInsets.all(gamesPadding),
                child: GenerateGameComponent(
                  generatedGame:
                  controller.randomGamesPadraoX[0],
                  subtitle:
                  'Primeiro jogo gerado de forma randômica para compor o padrão cruzado',
                  title:
                  'Jogo randômico com o padrão cruzado - Jogo 1',
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsets.all(gamesPadding),
                child: GenerateGameComponent(
                  generatedGame:
                  controller.randomGamesPadraoX[1],
                  subtitle:
                  'Jogo gerado de forma randômica, priorizando números que não sairam no primeiro jogo',
                  title:
                  'Jogo randômico com o padrão cruzado - Jogo 2',
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
              bottom: 50, left: 20, right: 20),
          child: Column(
            children: const [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Jogos com base nos sorteios recentes',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Divider( thickness: 4),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Padding(
                padding: EdgeInsets.all(gamesPadding),
                child: GenerateGameComponent(
                  generatedGame:
                  controller.randomGamesLastResults,
                  subtitle:
                  'Jogo gerado de forma randômica baseado nos números que mais saíram nos últimos ${controller.lastGamesToProcess} sorteios',
                  title:
                  'Jogo randômico em sorteios recentes',
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsets.all(gamesPadding),
                child: GenerateGameComponent(
                  generatedGame: controller
                      .moreNumbersPrimosLastResults,
                  subtitle:
                  'Jogo gerado de forma randômica baseado nos números que mais saíram nos últimos ${controller.lastGamesToProcess} sorteios forçando números primos',
                  title:
                  'Jogo com incidência em sorteios recentes com números primos',
                ),
              ),
            ),
          ],
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
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Padding(
                padding: EdgeInsets.all(gamesPadding),
                child: GenerateGameComponent(
                  generatedGame:
                  controller.moreNumbersLastResults,
                  subtitle:
                  'Jogo gerado baseado nos números que mais saíram nos últimos ${controller.lastGamesToProcess} sorteios',
                  title:
                  'Jogo com incidência em sorteios recentes',
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsets.all(gamesPadding),
                child: GenerateGameComponent(
                  generatedGame: controller
                      .moreNumbersParImparLastResults,
                  subtitle:
                  'Jogo gerado baseado nos números que mais saíram nos últimos ${controller.lastGamesToProcess} sorteios, balanceando impares e pares',
                  title:
                  'Jogo com incidência em sorteios recentes, balanceando impares e pares',
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
