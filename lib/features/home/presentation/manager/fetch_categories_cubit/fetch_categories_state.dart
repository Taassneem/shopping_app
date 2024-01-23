part of 'fetch_categories_cubit.dart';

sealed class FetchCategoriesState extends Equatable {
  const FetchCategoriesState();

  @override
  List<Object> get props => [];
}

final class FetchCategoriesInitial extends FetchCategoriesState {}
final class FetchCategoriesLoading extends FetchCategoriesState {}
final class FetchCategoriesSuccess extends FetchCategoriesState {
  final List<CategoryModel> categories;
  const FetchCategoriesSuccess(this.categories);
}
final class FetchCategoriesFailure extends FetchCategoriesState {
  final String errorMessage;
  const FetchCategoriesFailure(this.errorMessage);
}

final class FetchCategoryProductsLoading extends FetchCategoriesState {}
final class FetchCategoryProductsSuccess extends FetchCategoriesState {
  final List<ProductModel> products;
  const FetchCategoryProductsSuccess(this.products);
}
final class FetchCategoryProductsFailure extends FetchCategoriesState {
  final String errorMessage;
  const FetchCategoryProductsFailure(this.errorMessage);
}

