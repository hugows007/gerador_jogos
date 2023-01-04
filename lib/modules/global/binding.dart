import 'package:gerador_jogos/modules/global/controller.dart';
import 'package:get/get.dart';

class GlobalBinding implements Bindings {
  @override
  void dependencies() {
    init();
  }

  static void init() {
    Get.put(
      GlobalController(),
    );
  }
}
