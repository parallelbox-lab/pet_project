// ignore_for_file: must_be_immutable

part of 'change_password_bloc.dart';

/// Represents the state of ChangePassword in the application.
class ChangePasswordState extends Equatable {
  ChangePasswordState({
    this.emailController,
    this.otpController,
    this.changePasswordModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? otpController;

  ChangePasswordModel? changePasswordModelObj;

  @override
  List<Object?> get props => [
        emailController,
        otpController,
        changePasswordModelObj,
      ];
  ChangePasswordState copyWith({
    TextEditingController? emailController,
    TextEditingController? otpController,
    ChangePasswordModel? changePasswordModelObj,
  }) {
    return ChangePasswordState(
      emailController: emailController ?? this.emailController,
      otpController: otpController ?? this.otpController,
      changePasswordModelObj:
          changePasswordModelObj ?? this.changePasswordModelObj,
    );
  }
}
