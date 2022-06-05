import 'package:universal_html/html.dart' as html;

class CookieManager {

  static addToCookie(String key, dynamic value, int ageSeconds) {
    html.document.cookie = "$key=$value; max-age=$ageSeconds; path=/;";
  }

  static dynamic getCookie(String key) {
    String? cookies = html.document.cookie;
    List<String> listValues = cookies!.isNotEmpty ? cookies.split(";") : [];
    dynamic matchVal;
    for (int i = 0; i < listValues.length; i++) {
      List<String> map = listValues[i].split("=");
      String k = map[0].trim();
      String v = map[1].trim();
      if (key == k) {
        matchVal = v;
        break;
      }
    }

    return matchVal;
  }
}