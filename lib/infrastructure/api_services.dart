
import 'package:dio/dio.dart';
import 'package:dio_model_bloc/core/constants.dart';
import 'package:dio_model_bloc/domain/model/response_model.dart';

class ApiServices {
 static Future<ResponseModel?> fetchData() async {
    try {
      final response = await Dio().get(pathUrl);
      if (response.statusCode == 200 || response.statusCode == 201) {
        ResponseModel jsonObject = ResponseModel.fromJson(response.data);

        return jsonObject;
      } else {
        print("Server side error");
        return null;
      }
    } catch (e) {
      print("client side error");
      return null;
    }
  }
}


