// ignore_for_file: must_be_immutable

part of 'sign_up_bloc.dart';

/// Represents the state of SignUp in the application.
class SignUpState extends Equatable {
  SignUpState({
    this.userNameController,
    this.emailController,
    this.phoneNumberController,
    this.passwordController,
    this.confirmPasswordController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.signUpModelObj,
  });

  TextEditingController? userNameController;

  TextEditingController? emailController;

  TextEditingController? phoneNumberController;

  TextEditingController? passwordController;

  TextEditingController? confirmPasswordController;

  SignUpModel? signUpModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
        userNameController,
        emailController,
        phoneNumberController,
        passwordController,
        confirmPasswordController,
        isShowPassword,
        isShowPassword1,
        signUpModelObj,
      ];
  SignUpState copyWith({
    TextEditingController? userNameController,
    TextEditingController? emailController,
    TextEditingController? phoneNumberController,
    TextEditingController? passwordController,
    TextEditingController? confirmPasswordController,
    bool? isShowPassword,
    bool? isShowPassword1,
    SignUpModel? signUpModelObj,
  }) {
    return SignUpState(
      userNameController: userNameController ?? this.userNameController,
      emailController: emailController ?? this.emailController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      passwordController: passwordController ?? this.passwordController,
      confirmPasswordController:
          confirmPasswordController ?? this.confirmPasswordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}
