// ignore_for_file: must_be_immutable

part of 'phone_number_popup_successfully_verified_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PhoneNumberPopupSuccessfullyVerified widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PhoneNumberPopupSuccessfullyVerifiedEvent extends Equatable {}

/// Event that is dispatched when the PhoneNumberPopupSuccessfullyVerified widget is first created.
class PhoneNumberPopupSuccessfullyVerifiedInitialEvent
    extends PhoneNumberPopupSuccessfullyVerifiedEvent {
  @override
  List<Object?> get props => [];
}
