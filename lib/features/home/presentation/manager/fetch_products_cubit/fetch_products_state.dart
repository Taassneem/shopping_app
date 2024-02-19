part of 'fetch_products_cubit.dart';

sealed class FetchProductsState extends Equatable {
  const FetchProductsState();

  @override
  List<Object> get props => [];
}

final class FetchProductsInitial extends FetchProductsState {}

final class FetchProductsLoading extends FetchProductsState {}

final class FetchAllProductsLoading extends FetchProductsState {}

final class FetchAllProductsSuccess extends FetchProductsState {}

final class FetchAllProductsFailure extends FetchProductsState {
  final String errorMessage;

  const FetchAllProductsFailure({required this.errorMessage});
}

final class FetchProductsSuccess extends FetchProductsState {
  final List<ProductModel> product;

  const FetchProductsSuccess(this.product);
}

final class FetchProductsFailure extends FetchProductsState {
  final String errorMessage;

  const FetchProductsFailure(this.errorMessage);
}
