import 'dart:convert';

import 'package:http/http.dart' as http;

const googleApiKey = 'AIzaSyApuG_Aw9iNu6hhGIjsCmXInRI6DxaGrdE';

class LocationHelper {
  static String generateLocationPreviewImage(
      {double latitude, double longitude}) {
    return 'https://maps.googleapis.com/maps/api/staticmap?center=&$latitude,$longitude&zoom=16&size=600x300&maptype=roadmap&markers=color:red%7Clabel:A%7C$latitude,$longitude&key=$googleApiKey';
  }

  static Future<String> getPlaceAddress(double lat, double lng) async {
    final params = {
      'lat-lng': '$lat,$lng',
      'key': googleApiKey,
    };
    final url = Uri.https(
      'maps.googleapis.com',
      '/maps/api/geocode/json',
      params,
    );

    final response = await http.get(url);
    return json.decode(response.body)['results'][0]['formatted_address'];
  }
}
