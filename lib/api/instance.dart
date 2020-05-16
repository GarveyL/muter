import 'package:meedu/config/config.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

class Instance {
  Future<dynamic> get(String url, Map<String, dynamic> params) async {
    Dio dio = new Dio(BaseOptions(baseUrl: Config.domain));

    var res = await dio.get(url);
    var json = jsonDecode(res.toString());
    if (json['code'] != 0) {
      // 错误，抛出异常
    }
    return json['data'];
  }
}
