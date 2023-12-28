import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:owoeye_s_application1/presentation/settings_two_screen/models/settings_two_model.dart';
part 'settings_two_event.dart';
part 'settings_two_state.dart';

/// A bloc that manages the state of a SettingsTwo according to the event that is dispatched to it.
class SettingsTwoBloc extends Bloc<SettingsTwoEvent, SettingsTwoState> {
  SettingsTwoBloc(SettingsTwoState initialState) : super(initialState) {
    on<SettingsTwoInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<SettingsTwoState> emit,
  ) {
    emit(state.copyWith(isSelectedSwitch: event.value));
  }

  _onInitialize(
    SettingsTwoInitialEvent event,
    Emitter<SettingsTwoState> emit,
  ) async {
    emit(state.copyWith(isSelectedSwitch: false));
  }
}
