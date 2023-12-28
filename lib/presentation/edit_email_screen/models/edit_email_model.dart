// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [edit_email_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class EditEmailModel extends Equatable {
  EditEmailModel() {}

  EditEmailModel copyWith() {
    return EditEmailModel();
  }

  @override
  List<Object?> get props => [];
}
