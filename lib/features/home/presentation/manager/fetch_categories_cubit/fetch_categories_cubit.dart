import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/features/home/data/models/category_model.dart';
import 'package:shopping_app/features/home/data/repos/home_repo.dart';
import '../../../data/models/product_model/product_model.dart';
part 'fetch_categories_state.dart';

class FetchCategoriesCubit extends Cubit<FetchCategoriesState> {
  FetchCategoriesCubit(this.homeRepo) : super(FetchCategoriesInitial());
  final HomeRepo homeRepo;

  Future<void> fetchCategoryProducts({required String category}) async {
    emit(FetchCategoryProductsLoading());
    var result = await homeRepo.fetchCategoryProducts(category: category);
    result.fold(
        (failure) => emit(FetchCategoryProductsFailure(failure.errorMessage)),
        (products) => emit(FetchCategoryProductsSuccess(products)));
  }

  Future<void> fetchCategories() async {
    emit(FetchCategoriesLoading());

    var result = await homeRepo.fetchCategories();

    result.fold((failure) => emit(FetchCategoriesFailure(failure.errorMessage)),
        (categories) => emit(FetchCategoriesSuccess(categories)));
  }
}
