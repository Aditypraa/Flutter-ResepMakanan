import 'dart:convert';
import 'package:resep_makanan/models/resep.dart';
import 'package:http/http.dart' as http;

class ResepApi {

  static Future<List<Resep>> getResep() async {
    var uri = Uri.https(
        'yummly2.p.rapidapi.com', '/feeds/list', {"limit": "24", "start": "0"});

    final response = await http.get(uri, headers: {
      "X-RapidAPI-Key": "b9c6de27e1mshae9590de735b08cp1f1c71jsn0b95f45295cc",
      "X-RapidAPI-Host": "yummly2.p.rapidapi.com",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['feed']) {
      _temp.add(i['content']['details']);
    }

    return Resep.resepFromSnapshot(_temp);
  }
}
