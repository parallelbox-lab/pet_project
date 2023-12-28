// ignore_for_file: must_be_immutable

part of 'cart_bloc.dart';

/// Represents the state of Cart in the application.
class CartState extends Equatable {
  CartState({
    this.orderOnlyController,
    this.orderonlyController,
    this.installationOnlyController,
    this.cartModelObj,
  });

  TextEditingController? orderOnlyController;

  TextEditingController? orderonlyController;

  TextEditingController? installationOnlyController;

  CartModel? cartModelObj;

  @override
  List<Object?> get props => [
        orderOnlyController,
        orderonlyController,
        installationOnlyController,
        cartModelObj,
      ];
  CartState copyWith({
    TextEditingController? orderOnlyController,
    TextEditingController? orderonlyController,
    TextEditingController? installationOnlyController,
    CartModel? cartModelObj,
  }) {
    return CartState(
      orderOnlyController: orderOnlyController ?? this.orderOnlyController,
      orderonlyController: orderonlyController ?? this.orderonlyController,
      installationOnlyController:
          installationOnlyController ?? this.installationOnlyController,
      cartModelObj: cartModelObj ?? this.cartModelObj,
    );
  }
}
