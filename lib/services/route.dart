import 'package:dio/dio.dart';
import 'package:elegant_media_ios_practical_assignment/model/response_model.dart';

class APIRoute {
  var dio = Dio();

  Future<ResponseModel> getData() async {
    try {
      var response = await dio.get(
          "https://dl.dropboxusercontent.com/s/6nt7fkdt7ck0lue/hotels.json");
          print(response.data);
      return ResponseModel.fromJson(response.data as Map<String, dynamic>);

    } catch (e) {
      rethrow;
    }
  }
}
