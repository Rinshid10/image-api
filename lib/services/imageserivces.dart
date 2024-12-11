import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:imagefeacthing/modal/model.dart';

class Imageserivces {
  final baseUrl = 'https://jsonplaceholder.typicode.com/photos';
  Dio dio = Dio();

  Future<List<ImageFecthing>> getAll() async {
    try {
      final response = await dio.get(baseUrl);
      log(response.toString());

      if (response.statusCode == 200) {
        List<dynamic> data = response.data;
        return data.map((e) => ImageFecthing.fromJson(e)).toList();
      } else {
        throw Exception('error in fecting services');
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
