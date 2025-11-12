import 'package:dio/dio.dart';

import 'package:introbloc/model/user_model.dart';

class UserServese {
  
 
  Dio dio = Dio();
  
  String token = "";

   
  Future<bool> login(UserModel user) async {
    try {
      Response response = await dio.post(
        "https://simple-chef-app.onrender.com/login",
        data: user.toMap(),
      );
      token = response.data["access_token"];
      print(token);

      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  
}


