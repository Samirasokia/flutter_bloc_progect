import 'package:bloc/bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:introbloc/model/Productmodel.dart';
import 'package:introbloc/service/productService.dart';
import 'package:meta/meta.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial()) {
    on<GetAllProduct>((event, emit) async {
      try {
        emit(Loding());
       
        List<Productmodel> products = await Productservice().getprodact();
        if (products.isNotEmpty) {
          emit(Allprodact(products: products));
        } else {
          if (await InternetConnectionChecker.instance.hasConnection) {
            emit(Empty());
          } else {
            emit(NoInternetState());
          }
        }
      } catch (e) {
        print(e);
        emit(ErrorState());
      }
    });
  }
}
