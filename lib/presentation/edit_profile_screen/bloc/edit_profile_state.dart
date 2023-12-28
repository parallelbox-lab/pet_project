// ignore_for_file: must_be_immutable

part of 'edit_profile_bloc.dart';

/// Represents the state of EditProfile in the application.
class EditProfileState extends Equatable {
  EditProfileState({this.editProfileModelObj});

  EditProfileModel? editProfileModelObj;

  @override
  List<Object?> get props => [
        editProfileModelObj,
      ];
  EditProfileState copyWith({EditProfileModel? editProfileModelObj}) {
    return EditProfileState(
      editProfileModelObj: editProfileModelObj ?? this.editProfileModelObj,
    );
  }
}
