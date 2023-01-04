import 'package:flutter/material.dart';
import 'package:gerador_jogos/global_components/loading.dart';
import 'package:gerador_jogos/modules/game/controller.dart';
import 'package:gerador_jogos/modules/game/pages/components/widget/result.dart';
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
                    child: Divider(thickness: 4),
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
                        : controller.getGameComponent,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
