import 'package:shopping_app/features/home/data/models/product_model/product_model.dart';

class CartItemModel {
  final ProductModel productModel;
  final int quantity;

  CartItemModel({required this.productModel, required this.quantity});
  double totalPrice() => productModel.price! * quantity;
}
