import 'dart:convert';
// import 'package:resep makanan/model/resep.api.dart';
import 'package:http/http.dart' as http;
import 'package:resep_makanan/models/resep.dart';

class ResepApi{

  static Future<List<Resep>> getResep() async {
    var uri = Uri.https('tasty.p.rapidapi.com', '/recipes/list', {
      "from": "0",
      "size": "20",
      "tags": "under_30_minutes"
    });
    
    final reseponse = await http.get(uri, headers:{
      "x-rapidapi-host": "tasty.p.rapidapi.com",
      "x-rapidapi-key": "221ba7cdd6msha74c6b5aaf85dcap11da96jsn90d5aeef6ec2",
      "useQueryString": "true"
    });

    Map data = jsonDecode(reseponse.body);

    List _temp = [];

    for (var i in data['results']) {
      _temp.add(i);
    }

    return Resep.resepFromSnapshot(_temp); 
  }
}