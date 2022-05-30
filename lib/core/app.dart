import 'package:flutter/material.dart';
import 'package:gerador_jogos/core/messages.dart';
import 'package:gerador_jogos/core/routes.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AppRunner extends StatelessWidget {
  const AppRunner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Gerador de jogos randomicos para loteria da caixa',
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(480, name: MOBILE),
          const ResponsiveBreakpoint.resize(600, name: TABLET),
          const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ],
        background: Container(
          color: const Color(0xFFF5F5F5),
        ),
      ),
      theme: ThemeData(
        unselectedWidgetColor: const Color(0xFF0074E4),
        primaryColor: const Color(0xFF0074E4),
        primaryColorDark: const Color(0xFF455A64),
        backgroundColor: const Color(0xFFF2F2F2),
        errorColor: Colors.red,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
      ),
      translations: MessagesConfig(),
      locale: const Locale('pt', 'BR'),
      getPages: Routes.routes,
      initialRoute: Routes.home,
      enableLog: true,
    );
  }
}
