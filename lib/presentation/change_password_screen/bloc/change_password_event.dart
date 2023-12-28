// ignore_for_file: must_be_immutable

part of 'change_password_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChangePassword widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChangePasswordEvent extends Equatable {}

/// Event that is dispatched when the ChangePassword widget is first created.
class ChangePasswordInitialEvent extends ChangePasswordEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends ChangePasswordEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
