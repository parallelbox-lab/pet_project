// ignore_for_file: must_be_immutable

part of 'settings_two_bloc.dart';

/// Represents the state of SettingsTwo in the application.
class SettingsTwoState extends Equatable {
  SettingsTwoState({
    this.isSelectedSwitch = false,
    this.settingsTwoModelObj,
  });

  SettingsTwoModel? settingsTwoModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        settingsTwoModelObj,
      ];
  SettingsTwoState copyWith({
    bool? isSelectedSwitch,
    SettingsTwoModel? settingsTwoModelObj,
  }) {
    return SettingsTwoState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      settingsTwoModelObj: settingsTwoModelObj ?? this.settingsTwoModelObj,
    );
  }
}
