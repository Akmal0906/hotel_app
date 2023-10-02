import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:hotel_app/domain/hotel_model.dart';

class FetchData {
  static const String _baseUrl =
      "https://hotels4.p.rapidapi.com/v2/get-meta-data";

  static const Map<String, String> _headers = {
    "x-rapidapi-key": "3befd4d27amsh924f431bb3f176ep16004cjsn7375cdd0a878",
    "x-rapidapi-host": "hotels4.p.rapidapi.com",
  };

  Future<HotelModel> get() async {
    Uri uri = Uri.parse(_baseUrl);
    print('URI: $uri');
    final response = await http.get(uri, headers: _headers);
    if (response.statusCode == 200) {
      final jsonMap = json.decode(response.body);
      HotelModel hotelModel=HotelModel.fromJson(jsonMap);
      print(hotelModel.toJson());
      return HotelModel.fromJson(jsonMap);
    } else {
      // If that response was not OK, throw an error.
      throw Exception(
          'API call returned: ${response.statusCode} ${response.reasonPhrase}');
    }
  }
}
