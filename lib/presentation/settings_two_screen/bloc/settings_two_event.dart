// ignore_for_file: must_be_immutable

part of 'settings_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SettingsTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SettingsTwoEvent extends Equatable {}

/// Event that is dispatched when the SettingsTwo widget is first created.
class SettingsTwoInitialEvent extends SettingsTwoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends SettingsTwoEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
