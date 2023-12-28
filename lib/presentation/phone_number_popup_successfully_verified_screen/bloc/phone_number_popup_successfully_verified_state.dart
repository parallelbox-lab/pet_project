// ignore_for_file: must_be_immutable

part of 'phone_number_popup_successfully_verified_bloc.dart';

/// Represents the state of PhoneNumberPopupSuccessfullyVerified in the application.
class PhoneNumberPopupSuccessfullyVerifiedState extends Equatable {
  PhoneNumberPopupSuccessfullyVerifiedState(
      {this.phoneNumberPopupSuccessfullyVerifiedModelObj});

  PhoneNumberPopupSuccessfullyVerifiedModel?
      phoneNumberPopupSuccessfullyVerifiedModelObj;

  @override
  List<Object?> get props => [
        phoneNumberPopupSuccessfullyVerifiedModelObj,
      ];
  PhoneNumberPopupSuccessfullyVerifiedState copyWith(
      {PhoneNumberPopupSuccessfullyVerifiedModel?
          phoneNumberPopupSuccessfullyVerifiedModelObj}) {
    return PhoneNumberPopupSuccessfullyVerifiedState(
      phoneNumberPopupSuccessfullyVerifiedModelObj:
          phoneNumberPopupSuccessfullyVerifiedModelObj ??
              this.phoneNumberPopupSuccessfullyVerifiedModelObj,
    );
  }
}
