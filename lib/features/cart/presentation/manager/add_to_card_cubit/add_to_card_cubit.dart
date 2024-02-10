import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shopping_app/features/cart/data/model/card_model.dart';
part 'add_to_card_state.dart';

class AddToCardCubit extends Cubit<AddToCardState> {
  AddToCardCubit() : super(AddToCardInitial());

  List<CardModel>? cards;

  addToCart(CardModel card) async {
    emit(AddToCardLoading());

    try {
      var cardBox = Hive.box<CardModel>('card_box');
      await cardBox.add(card);

      emit(AddToCardSuccess());
    } catch (e) {
      emit(AddToCardFailure(errorMessage: e.toString()));
    }
  }

  void fetchAllCards() {
    try {
      emit(CartProductLoading());

      var cardBox = Hive.box<CardModel>('card_box');

      cards = cardBox.values.toList();

      emit(CartProductSuccess(cards: cards!));
    } catch (e) {
      emit(CartProductFailure(errorMessage: e.toString()));
    }
  }
  
}
