import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:owoeye_s_application1/presentation/home_screen_two_screen/models/home_screen_two_model.dart';
part 'home_screen_two_event.dart';
part 'home_screen_two_state.dart';

/// A bloc that manages the state of a HomeScreenTwo according to the event that is dispatched to it.
class HomeScreenTwoBloc extends Bloc<HomeScreenTwoEvent, HomeScreenTwoState> {
  HomeScreenTwoBloc(HomeScreenTwoState initialState) : super(initialState) {
    on<HomeScreenTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeScreenTwoInitialEvent event,
    Emitter<HomeScreenTwoState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
  }
}
