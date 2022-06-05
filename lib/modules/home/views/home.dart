import 'package:flutter/material.dart';
import 'package:gerador_jogos/core/images.dart';
import 'package:gerador_jogos/core/routes.dart';
import 'package:gerador_jogos/modules/global/components/appbar.dart';
import 'package:gerador_jogos/modules/global/components/footer.dart';
import 'package:gerador_jogos/modules/global/constants/global.dart';
import 'package:gerador_jogos/modules/home/views/components/option.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarComponent(
        title: 'Gerador de jogos lotéricos',
        showLogo: true,
      ),
      bottomSheet: const FooterComponent(),
      body: Center(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
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
            const OptionComponent(
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
