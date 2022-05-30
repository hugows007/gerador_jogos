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
      title: Text(
        title ?? '',
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      leading: showLogo! ? const Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.0),
        child: Image(
          image: AssetImage(ImagesUri.loteria),
        ),
      ) : null,
      leadingWidth: 50,
      backgroundColor: Colors.grey,
    );
  }

  @override
  Size get preferredSize => Size(Get.width, Get.height / 20);
}
