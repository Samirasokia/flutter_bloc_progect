part of 'product_bloc.dart';

@immutable
sealed class ProductState {}

final class ProductInitial extends ProductState {}

class ErrorLogin extends ProductState {}

class Allprodact extends ProductState {
  List<Productmodel> products;
  Allprodact({required this.products});
}

class Loding extends ProductState {}

class ErrorState extends ProductState {}

class Empty extends ProductState {}

class NoInternetState extends ProductState {}
