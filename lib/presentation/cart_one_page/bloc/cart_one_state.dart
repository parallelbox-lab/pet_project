// ignore_for_file: must_be_immutable

part of 'cart_one_bloc.dart';

/// Represents the state of CartOne in the application.
class CartOneState extends Equatable {
  CartOneState({
    this.all = false,
    this.cartOneModelObj,
  });

  CartOneModel? cartOneModelObj;

  bool all;

  @override
  List<Object?> get props => [
        all,
        cartOneModelObj,
      ];
  CartOneState copyWith({
    bool? all,
    CartOneModel? cartOneModelObj,
  }) {
    return CartOneState(
      all: all ?? this.all,
      cartOneModelObj: cartOneModelObj ?? this.cartOneModelObj,
    );
  }
}
