import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:shopping_app/core/errors/failure.dart';
import 'package:shopping_app/core/utils/api_service.dart';
import 'package:shopping_app/features/home/data/models/category_model.dart';
import 'package:shopping_app/features/home/data/models/product_model/product_model.dart';
import 'package:shopping_app/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<ProductModel>>> fetchProducts({
    required int limit,
    required int offset,
  }) async {
    try {
      var data = await apiService.get(
          endPoint: 'products?limit=$limit&offset=$offset');
      List<ProductModel> products =
          data.map((item) => ProductModel.fromJson(item)).toList();
      // List<ProductModel> products = [];
      // for (int i = 0; i < data.length; i++) {
      //   products.add(ProductModel.fromJson(data[i]));
      // }
      return right(products);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<ProductModel>>> fetchCategoryProducts(
      {required String category}) async {
    try {
      var data = await apiService.get(endPoint: 'products/category/$category');
      List<ProductModel> products =
          data.map((item) => ProductModel.fromJson(item)).toList();
      return right(products);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<CategoryModel>>> fetchCategories() async {
    try {
      var data = await apiService.get(endPoint: 'products/categories');
      List<CategoryModel> categories =
          data.map((item) => CategoryModel.fromJson(item)).toList();
      return right(categories);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
