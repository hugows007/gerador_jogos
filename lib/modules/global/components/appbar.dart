import 'package:flutter/material.dart';
import 'package:gerador_jogos/core/images.dart';
import 'package:get/get.dart';

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool? showLogo;

  const AppBarComponent({
    Key? key,
    this.showLogo = false,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text(
        title ?? '',
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[Color(0xff277eb6), Color(0xff058ce1)]),
        ),
      ),
      leading: showLogo!
          ? const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: Image(
                image: AssetImage(ImagesUri.loteria),
              ),
            )
          : null,
      leadingWidth: 60,
      backgroundColor: Colors.grey,
    );
  }

  @override
  Size get preferredSize => Size(Get.width, Get.height / 18);
}
