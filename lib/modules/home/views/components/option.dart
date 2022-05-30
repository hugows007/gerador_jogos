import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OptionComponent extends StatelessWidget {
  final String optionTitle;
  final String optionGame;
  final String imageUri;
  final String route;

  const OptionComponent({
    Key? key,
    required this.optionTitle,
    required this.optionGame,
    required this.imageUri,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(route, arguments: optionGame),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 600,
              height: 200,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withOpacity(0.2),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage(imageUri),
                    width: 400,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      optionTitle,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
