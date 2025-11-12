part of 'product_bloc.dart';

@immutable
sealed class ProductEvent {}

class login extends ProductEvent {}

class GetAllProduct extends ProductEvent {}

class GetoneProduct extends ProductEvent {}
