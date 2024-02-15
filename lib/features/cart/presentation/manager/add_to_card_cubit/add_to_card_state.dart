part of 'add_to_card_cubit.dart';

sealed class AddToCardState extends Equatable {
  const AddToCardState();

  @override
  List<Object> get props => [];
}

final class AddToCardInitial extends AddToCardState {}

final class AddToCardLoading extends AddToCardState {}

final class AddToCardSuccess extends AddToCardState {}

final class AddToCardFailure extends AddToCardState {
  final String errorMessage;

  const AddToCardFailure({required this.errorMessage});
}

final class CartProductLoading extends AddToCardState {}

final class CartProductSuccess extends AddToCardState {
  final List<CardModel> cards;

  const CartProductSuccess({required this.cards});
}

final class CartProductFailure extends AddToCardState {
  final String errorMessage;

  const CartProductFailure({required this.errorMessage});
}

final class QuantityIncrement extends AddToCardState{}
final class QuantityDecrement extends AddToCardState{}
final class CalculateTotalPrice extends AddToCardState{}
