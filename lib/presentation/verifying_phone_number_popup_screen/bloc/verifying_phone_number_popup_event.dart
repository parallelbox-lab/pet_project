// ignore_for_file: must_be_immutable

part of 'verifying_phone_number_popup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VerifyingPhoneNumberPopup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VerifyingPhoneNumberPopupEvent extends Equatable {}

/// Event that is dispatched when the VerifyingPhoneNumberPopup widget is first created.
class VerifyingPhoneNumberPopupInitialEvent
    extends VerifyingPhoneNumberPopupEvent {
  @override
  List<Object?> get props => [];
}
