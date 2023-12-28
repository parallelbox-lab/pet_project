// ignore_for_file: must_be_immutable

part of 'email_phone_number_bloc.dart';

/// Represents the state of EmailPhoneNumber in the application.
class EmailPhoneNumberState extends Equatable {
  EmailPhoneNumberState({
    this.phoneNumberController,
    this.otpController,
    this.emailPhoneNumberModelObj,
  });

  TextEditingController? phoneNumberController;

  TextEditingController? otpController;

  EmailPhoneNumberModel? emailPhoneNumberModelObj;

  @override
  List<Object?> get props => [
        phoneNumberController,
        otpController,
        emailPhoneNumberModelObj,
      ];
  EmailPhoneNumberState copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? otpController,
    EmailPhoneNumberModel? emailPhoneNumberModelObj,
  }) {
    return EmailPhoneNumberState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      otpController: otpController ?? this.otpController,
      emailPhoneNumberModelObj:
          emailPhoneNumberModelObj ?? this.emailPhoneNumberModelObj,
    );
  }
}
