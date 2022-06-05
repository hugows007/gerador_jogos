import 'package:get/get.dart';

class GlobalController extends GetxService {
  static GlobalController get instance {
      return Get.find();
  }
}
