import 'package:http/http.dart' as http;
import 'dart:convert';
final apiKey = 'fcfc25064d308ce6f8df58737411a2f7';

class NetworkHelper{
  NetworkHelper(this.url);

  final String url;
   getData() async{
    http.Response response = await http.get(url);
    //print(response.body);
    if(response.statusCode == 200)
    {
      String data = response.body;
      //print(data);
      return jsonDecode(data);
    }
    else{
      print(response.statusCode);
    }
  }
}