import 'package:equatable/equatable.dart';


import 'package:flutter_bloc/flutter_bloc.dart';


import 'package:shopping_app/features/home/data/repos/home_repo.dart';


part 'add_to_cart_state.dart';


class AddToCartCubit extends Cubit<AddToCartState> {

  AddToCartCubit(this.homeRepo) : super(AddToCartInitial());


  final HomeRepo homeRepo;


  Future<void> addToCart({required int id}) async {

    emit(AddToCartLoading());

    var result = await homeRepo.addToCart(id: id);
    result.fold(
        (failure) => emit(AddToCartFailure(errorMessage: failure.errorMessage)),
        (product) => emit(AddToCartSuccess()));

  }

}

