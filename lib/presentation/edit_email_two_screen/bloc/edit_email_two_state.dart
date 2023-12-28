// ignore_for_file: must_be_immutable

part of 'edit_email_two_bloc.dart';

/// Represents the state of EditEmailTwo in the application.
class EditEmailTwoState extends Equatable {
  EditEmailTwoState({
    this.nameController,
    this.mobileNoController,
    this.addressController,
    this.zipcodeController,
    this.editEmailTwoModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? mobileNoController;

  TextEditingController? addressController;

  TextEditingController? zipcodeController;

  EditEmailTwoModel? editEmailTwoModelObj;

  @override
  List<Object?> get props => [
        nameController,
        mobileNoController,
        addressController,
        zipcodeController,
        editEmailTwoModelObj,
      ];
  EditEmailTwoState copyWith({
    TextEditingController? nameController,
    TextEditingController? mobileNoController,
    TextEditingController? addressController,
    TextEditingController? zipcodeController,
    EditEmailTwoModel? editEmailTwoModelObj,
  }) {
    return EditEmailTwoState(
      nameController: nameController ?? this.nameController,
      mobileNoController: mobileNoController ?? this.mobileNoController,
      addressController: addressController ?? this.addressController,
      zipcodeController: zipcodeController ?? this.zipcodeController,
      editEmailTwoModelObj: editEmailTwoModelObj ?? this.editEmailTwoModelObj,
    );
  }
}
