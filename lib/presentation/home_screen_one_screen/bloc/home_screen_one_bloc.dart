import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/salecardgrid_item_model.dart';
import 'package:owoeye_s_application1/presentation/home_screen_one_screen/models/home_screen_one_model.dart';
part 'home_screen_one_event.dart';
part 'home_screen_one_state.dart';

/// A bloc that manages the state of a HomeScreenOne according to the event that is dispatched to it.
class HomeScreenOneBloc extends Bloc<HomeScreenOneEvent, HomeScreenOneState> {
  HomeScreenOneBloc(HomeScreenOneState initialState) : super(initialState) {
    on<HomeScreenOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeScreenOneInitialEvent event,
    Emitter<HomeScreenOneState> emit,
  ) async {
    emit(state.copyWith(
        homeScreenOneModelObj: state.homeScreenOneModelObj
            ?.copyWith(salecardgridItemList: fillSalecardgridItemList())));
  }

  List<SalecardgridItemModel> fillSalecardgridItemList() {
    return [
      SalecardgridItemModel(
          image: ImageConstant.imgRectangle484,
          text1: "Solar panel",
          text2: "₦2,000",
          text3:
              "Explore the Future of Sustainable Energy with Our Premium Solar Panels for Sale! "),
      SalecardgridItemModel(
          image: ImageConstant.imgRectangle48496x159,
          text1: "Batteries",
          text2: "₦2,000",
          text3:
              "Explore the Future of Sustainable Energy with Our Premium Solar Panels for Sale! "),
      SalecardgridItemModel(
          image: ImageConstant.imgRectangle4841,
          text1: "Wires",
          text2: "₦2,000",
          text3:
              "Explore the Future of Sustainable Energy with Our Premium Solar Panels for Sale! "),
      SalecardgridItemModel(
          image: ImageConstant.imgRectangle4842,
          text1: "Light bulbs",
          text2: "₦2,000",
          text3:
              "Explore the Future of Sustainable Energy with Our Premium Solar Panels for Sale! "),
      SalecardgridItemModel(
          image: ImageConstant.imgRectangle484,
          text1: "Solar panel",
          text2: "₦2,000",
          text3:
              "Explore the Future of Sustainable Energy with Our Premium Solar Panels for Sale! "),
      SalecardgridItemModel(
          image: ImageConstant.imgRectangle48496x159,
          text1: "Batteries",
          text2: "₦2,000",
          text3:
              "Explore the Future of Sustainable Energy with Our Premium Solar Panels for Sale! ")
    ];
  }
}
