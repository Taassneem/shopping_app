import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:shopping_app/features/home/data/repos/home_repo.dart';

import '../../../data/models/product_model/product_model.dart';

part 'fetch_products_state.dart';

class FetchProductsCubit extends Cubit<FetchProductsState> {
  FetchProductsCubit(this.homeRepo) : super(FetchProductsInitial());
  int limit = 9;
  int offset = 0;
  final HomeRepo homeRepo;
  bool isLoading = false;
  final scrollController = ScrollController();
  final refresherController = RefreshController(initialRefresh: true);

  Future<void> fetchProducts({bool isLoading = false}) async {
    if (isLoading) {
      emit(FetchAllProductsLoading());
    } else {
      emit(FetchProductsLoading());
    }

    var result = await homeRepo.fetchProducts(limit: limit, offset: offset);

    result.fold(
      (failure) {
        if (isLoading) {
          emit(FetchAllProductsFailure(errorMessage: failure.errorMessage));
        } else {
          emit(FetchProductsFailure(failure.errorMessage));
        }
      },
      (products) {
        offset += products.length;
        emit(FetchProductsSuccess(products));
      },
    );
  }

  Future<void> fetchAllProduct() async {
    if (isLoading) return;
    if (scrollController.position.pixels ==
        scrollController.position.maxScrollExtent) {
      isLoading = true;
      limit += 3;
      await fetchProducts(isLoading: true);
      isLoading = false;
    }
  }
}
