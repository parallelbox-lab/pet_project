// ignore_for_file: must_be_immutable

part of 'cart_two_bloc.dart';

/// Represents the state of CartTwo in the application.
class CartTwoState extends Equatable {
  CartTwoState({
    this.editTextOrderOnlyController,
    this.editTextOrderonlyController,
    this.editTextInstallationOnlyController,
    this.cartTwoModelObj,
  });

  TextEditingController? editTextOrderOnlyController;

  TextEditingController? editTextOrderonlyController;

  TextEditingController? editTextInstallationOnlyController;

  CartTwoModel? cartTwoModelObj;

  @override
  List<Object?> get props => [
        editTextOrderOnlyController,
        editTextOrderonlyController,
        editTextInstallationOnlyController,
        cartTwoModelObj,
      ];
  CartTwoState copyWith({
    TextEditingController? editTextOrderOnlyController,
    TextEditingController? editTextOrderonlyController,
    TextEditingController? editTextInstallationOnlyController,
    CartTwoModel? cartTwoModelObj,
  }) {
    return CartTwoState(
      editTextOrderOnlyController:
          editTextOrderOnlyController ?? this.editTextOrderOnlyController,
      editTextOrderonlyController:
          editTextOrderonlyController ?? this.editTextOrderonlyController,
      editTextInstallationOnlyController: editTextInstallationOnlyController ??
          this.editTextInstallationOnlyController,
      cartTwoModelObj: cartTwoModelObj ?? this.cartTwoModelObj,
    );
  }
}
