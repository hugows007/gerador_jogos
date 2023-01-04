import 'package:gerador_jogos/modules/global/mixins/variables.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';

class GlobalController extends GetxService with GlobalVariable {
  static GlobalController get instance {
    return Get.find();
  }

  @override
  void onReady() {
    PackageInfo.fromPlatform().then((packageInfo) {
      appName = packageInfo.appName;
      packageName = packageInfo.packageName;
      version = packageInfo.version;
      buildNumber = packageInfo.buildNumber;
    });
  }
}
