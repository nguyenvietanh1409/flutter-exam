import 'dart:convert';

import 'package:http/http.dart';
import 'package:untitled/model/place.dart';

class Helper {
  final String apiUrl = 'http://10.0.2.2:8080/api/getAllPlaces';

  Future<List<Place>> getAllPlant() async {
    Response res = await get(Uri.parse(apiUrl));

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Place> places = body.map((dynamic item) => Place.fromJson(item),).toList();

      return places;
    } else {
      throw "Error";
    }
  }
}