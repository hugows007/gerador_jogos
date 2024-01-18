import 'package:flutter/material.dart';
import 'package:gerador_jogos/core/images.dart';
import 'package:gerador_jogos/core/routes.dart';
import 'package:gerador_jogos/global_components/appbar.dart';
import 'package:gerador_jogos/global_components/footer.dart';
import 'package:gerador_jogos/modules/global/constants/global.dart';
import 'package:gerador_jogos/modules/home/views/components/option.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarComponent(
        title: 'Gerador de jogos lotéricos',
        showLogo: true,
      ),
      bottomSheet: FooterComponent(),
      body: Center(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Image(
                    height: 80,
                    image: AssetImage(ImagesUri.loteriaCompleto),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    'Este sistema foi criado para auxilar, totalmente de graça, na geração de diversos tipos de jogos da loteria da Caixa Econômica Federal.'
                    '\nOs jogos são gerados de forma randômica e baseados em padrões específicos de cada jogo.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Divider(),
                ),
              ],
            ),
            OptionComponent(
              optionTitle: 'Gerar para Lotofácil',
              optionGame: GlobalConstants.gameLotofacil,
              imageUri: ImagesUri.lotofacil,
              route: Routes.games,
            ),
          ],
        ),
      ),
    );
  }
}
