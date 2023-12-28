import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/solarpanellist_item_model.dart';
import 'package:owoeye_s_application1/presentation/cart_one_page/models/cart_one_model.dart';
part 'cart_one_event.dart';
part 'cart_one_state.dart';

/// A bloc that manages the state of a CartOne according to the event that is dispatched to it.
class CartOneBloc extends Bloc<CartOneEvent, CartOneState> {
  CartOneBloc(CartOneState initialState) : super(initialState) {
    on<CartOneInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<CartOneState> emit,
  ) {
    emit(state.copyWith(
      all: event.value,
    ));
  }

  List<SolarpanellistItemModel> fillSolarpanellistItemList() {
    return [
      SolarpanellistItemModel(
          solarPanelImage: ImageConstant.imgRectangle490,
          solarPanelText: "Solar panel",
          exploreTheFutureText:
              "Explore the Future of Sustainable Energy with Our Premium Solar Panels for Sale! ",
          orderAndInstallationText: "Order and installation",
          priceText: "₦2,000"),
      SolarpanellistItemModel(
          solarPanelImage: ImageConstant.imgRectangle490102x103),
      SolarpanellistItemModel(solarPanelImage: ImageConstant.imgRectangle4901)
    ];
  }

  _onInitialize(
    CartOneInitialEvent event,
    Emitter<CartOneState> emit,
  ) async {
    emit(state.copyWith(
      all: false,
    ));
    emit(state.copyWith(
        cartOneModelObj: state.cartOneModelObj?.copyWith(
      solarpanellistItemList: fillSolarpanellistItemList(),
    )));
  }
}
