
import 'dart:convert';

import 'package:lofo_app/model/record.dart';
import 'package:http/http.dart' as http;

class ApiClient{

  Future<List<Record>> getPost() async {
    final response = await http
        .get(Uri.parse('https://run.mocky.io/v3/5343d0fc-fab1-4011-a117-eaf0898bc14f'));
    print(response);
    final records = Records.fromJson(jsonDecode(response.body)).records;
    print(records);
    return records;
  }

}