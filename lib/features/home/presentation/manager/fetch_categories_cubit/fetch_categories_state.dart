part of 'fetch_categories_cubit.dart';

sealed class FetchCategoriesState extends Equatable {
  const FetchCategoriesState();

  @override
  List<Object> get props => [];
}

final class FetchCategoriesInitial extends FetchCategoriesState {}
final class FetchCategoriesLoading extends FetchCategoriesState {}
final class FetchCategoriesSuccess extends FetchCategoriesState {
  final List<ProductModel> product;

const  FetchCategoriesSuccess(this.product);

}
final class FetchCategoriesFailure extends FetchCategoriesState {
  final String errorMessage;

const  FetchCategoriesFailure(this.errorMessage);

}
