import 'package:url_launcher/url_launcher_string.dart';

class MapUtils {
  MapUtils._();
  static Future<void> openMap(double latitude, double longtitude) async {
    String googleMapUrl =
        "https://www.google.com/map/search/?api=1&query=$latitude,$longtitude";
    if (await canLaunchUrlString(googleMapUrl)) {
      await canLaunchUrlString(googleMapUrl);
    } else {
      throw 'No';
    }
  }
}
