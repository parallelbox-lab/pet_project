// ignore_for_file: must_be_immutable

part of 'edit_email_one_bloc.dart';

/// Represents the state of EditEmailOne in the application.
class EditEmailOneState extends Equatable {
  EditEmailOneState({
    this.otpController,
    this.editEmailOneModelObj,
  });

  TextEditingController? otpController;

  EditEmailOneModel? editEmailOneModelObj;

  @override
  List<Object?> get props => [
        otpController,
        editEmailOneModelObj,
      ];
  EditEmailOneState copyWith({
    TextEditingController? otpController,
    EditEmailOneModel? editEmailOneModelObj,
  }) {
    return EditEmailOneState(
      otpController: otpController ?? this.otpController,
      editEmailOneModelObj: editEmailOneModelObj ?? this.editEmailOneModelObj,
    );
  }
}
