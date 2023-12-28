// ignore_for_file: must_be_immutable

part of 'email_phone_number_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EmailPhoneNumber widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EmailPhoneNumberEvent extends Equatable {}

/// Event that is dispatched when the EmailPhoneNumber widget is first created.
class EmailPhoneNumberInitialEvent extends EmailPhoneNumberEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends EmailPhoneNumberEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
