import 'package:mobx_example/model/user_model.dart';
import 'package:dio/dio.dart';

class Service {
  final dio = Dio();
  Future<UserModel?> getData() async {
    var response = await dio.get("https://reqres.in/api/users?page=2");
    if (response.statusCode == 200) {
      var result = UserModel.fromJson(response.data);
      return result;
    } else {
      print("Veri getirilirken başarısız oldu. ${response.statusCode}");
    }
  }
}