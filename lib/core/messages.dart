import 'package:get/get.dart';

class MessagesConfig extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'pt_BR': {}
      ..addAll(buttons)

  };

  get buttons {
    return {
      'button_cancel': 'Cancelar',
    };
  }
}