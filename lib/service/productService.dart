import 'package:dio/dio.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:introbloc/config/my_exception.dart';
import 'package:introbloc/model/Productmodel.dart';
import 'package:introbloc/service/user_servese.dart';

class Productservice {
  UserServese userService = UserServese();
  Dio dio = Dio();
  String baseUrl = "https://simple-chef-app.onrender.com/products";
  late Response response;
  Future< List< Productmodel>> getprodact() async {

    try {

     if (await InternetConnectionChecker.instance.hasConnection){
      Response response = await dio.get(
      baseUrl,
      options: Options(
        headers: {"Authorization": "Bearer " + userService.token},
      
      ),
    );

     }else
     {
       throw NoInternetExcetion();
     }
     List<Productmodel> products=[];
     for ( var i = 0 ; i<=response.data ['products'].length; i++  ){
     products.add(Productmodel.fromMap(response.data["products"][i]));
       print(products);
     }
     return products;
   
    } catch (e) {
       print(e);
      throw EmptyDataException();
    }
   
    // return Productmodel.fromMap(response.data);
  }
}
 