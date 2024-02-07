import 'package:dartz/dartz.dart';
import 'package:shopping_app/core/errors/failure.dart';
import 'package:shopping_app/features/cart/data/model/cart_model/cart_model.dart';

abstract class CartRepo {
  Future<Either<Failure, List<CartModel>>> addToCart();
  Future<Either<Failure, List<CartModel>>> deleteProduct();
}
