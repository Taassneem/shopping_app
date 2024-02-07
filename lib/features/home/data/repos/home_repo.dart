import 'package:dartz/dartz.dart';
import 'package:shopping_app/core/errors/failure.dart';
import 'package:shopping_app/features/home/data/models/category_model.dart';
import 'package:shopping_app/features/home/data/models/product_model/product_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<ProductModel>>> fetchProducts();
  Future<Either<Failure, List<CategoryModel>>> fetchCategories();
  Future<Either<Failure, List<ProductModel>>> addToCart({required int id});
  Future<Either<Failure, List<ProductModel>>> fetchCategoryProducts(
      {required String category});
}
