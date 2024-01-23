import 'package:equatable/equatable.dart';


import 'package:flutter_bloc/flutter_bloc.dart';


import 'package:shopping_app/features/home/data/repos/home_repo.dart';


import '../../../data/models/product_model/product_model.dart';


part 'fetch_products_state.dart';


class FetchProductsCubit extends Cubit<FetchProductsState> {

  FetchProductsCubit(this.homeRepo) : super(FetchProductsInitial());


  final HomeRepo homeRepo;


  Future<void> fetchProducts() async {

    emit(FetchProductsLoading());


    var result = await homeRepo.fetchProducts();


    result.fold((failure) => emit(FetchProductsFailure(failure.errorMessage)),

        (products) => emit(FetchProductsSuccess(products)));

  }

}

