import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dio_model_bloc/core/constants.dart';

import 'package:dio_model_bloc/domain/model/response_model.dart';

class ApiServices {
  static Future<List<ResponseModel?>?> fetchData() async {
    try {
      final response = await Dio().get(pathUrl);
      print(response.statusCode);

      if (response.statusCode == 200 || response.statusCode == 201) {
        ///------------------------------------------------------------------
      print(response.statusCode);

        final resultList = (response.data['results'] as List)
            .map((e) => ResponseModel.fromJson(e))
            .toList();

        print(resultList);
        log(response.data.toString());
        log(response.data);

        return resultList;

//-----------------------------------------------------------------
      } else {
        log('server error');
        return null;
      }
    } catch (_) {
      log('client error');
      return null;
    }
  }
}
