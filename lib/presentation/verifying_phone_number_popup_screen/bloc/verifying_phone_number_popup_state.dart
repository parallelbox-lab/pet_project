// ignore_for_file: must_be_immutable

part of 'verifying_phone_number_popup_bloc.dart';

/// Represents the state of VerifyingPhoneNumberPopup in the application.
class VerifyingPhoneNumberPopupState extends Equatable {
  VerifyingPhoneNumberPopupState({this.verifyingPhoneNumberPopupModelObj});

  VerifyingPhoneNumberPopupModel? verifyingPhoneNumberPopupModelObj;

  @override
  List<Object?> get props => [
        verifyingPhoneNumberPopupModelObj,
      ];
  VerifyingPhoneNumberPopupState copyWith(
      {VerifyingPhoneNumberPopupModel? verifyingPhoneNumberPopupModelObj}) {
    return VerifyingPhoneNumberPopupState(
      verifyingPhoneNumberPopupModelObj: verifyingPhoneNumberPopupModelObj ??
          this.verifyingPhoneNumberPopupModelObj,
    );
  }
}
