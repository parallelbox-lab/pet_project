// ignore_for_file: must_be_immutable

part of 'edit_email_bloc.dart';

/// Represents the state of EditEmail in the application.
class EditEmailState extends Equatable {
  EditEmailState({
    this.nameController,
    this.mobileNoController,
    this.addressController,
    this.zipcodeController,
    this.editEmailModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? mobileNoController;

  TextEditingController? addressController;

  TextEditingController? zipcodeController;

  EditEmailModel? editEmailModelObj;

  @override
  List<Object?> get props => [
        nameController,
        mobileNoController,
        addressController,
        zipcodeController,
        editEmailModelObj,
      ];
  EditEmailState copyWith({
    TextEditingController? nameController,
    TextEditingController? mobileNoController,
    TextEditingController? addressController,
    TextEditingController? zipcodeController,
    EditEmailModel? editEmailModelObj,
  }) {
    return EditEmailState(
      nameController: nameController ?? this.nameController,
      mobileNoController: mobileNoController ?? this.mobileNoController,
      addressController: addressController ?? this.addressController,
      zipcodeController: zipcodeController ?? this.zipcodeController,
      editEmailModelObj: editEmailModelObj ?? this.editEmailModelObj,
    );
  }
}
