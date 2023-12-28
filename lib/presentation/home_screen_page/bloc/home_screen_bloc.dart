import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/salecard_item_model.dart';
import 'package:owoeye_s_application1/presentation/home_screen_page/models/home_screen_model.dart';
part 'home_screen_event.dart';
part 'home_screen_state.dart';

/// A bloc that manages the state of a HomeScreen according to the event that is dispatched to it.
class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc(HomeScreenState initialState) : super(initialState) {
    on<HomeScreenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeScreenInitialEvent event,
    Emitter<HomeScreenState> emit,
  ) async {
    emit(state.copyWith(
        homeScreenModelObj: state.homeScreenModelObj
            ?.copyWith(salecardItemList: fillSalecardItemList())));
  }

  List<SalecardItemModel> fillSalecardItemList() {
    return [
      SalecardItemModel(
          image: ImageConstant.imgRectangle484,
          title: "Solar panel",
          price: "₦2,000",
          description:
              "Explore the Future of Sustainable Energy with Our Premium Solar Panels for Sale! "),
      SalecardItemModel(
          image: ImageConstant.imgRectangle48496x159,
          title: "Batteries",
          price: "₦2,000",
          description:
              "Explore the Future of Sustainable Energy with Our Premium Solar Panels for Sale! "),
      SalecardItemModel(
          image: ImageConstant.imgRectangle4841,
          title: "Wires",
          price: "₦2,000",
          description:
              "Explore the Future of Sustainable Energy with Our Premium Solar Panels for Sale! "),
      SalecardItemModel(
          image: ImageConstant.imgRectangle4842,
          title: "Light bulbs",
          price: "₦2,000",
          description:
              "Explore the Future of Sustainable Energy with Our Premium Solar Panels for Sale! ")
    ];
  }
}
