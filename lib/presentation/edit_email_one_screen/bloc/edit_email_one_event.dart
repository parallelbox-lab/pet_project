// ignore_for_file: must_be_immutable

part of 'edit_email_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EditEmailOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EditEmailOneEvent extends Equatable {}

/// Event that is dispatched when the EditEmailOne widget is first created.
class EditEmailOneInitialEvent extends EditEmailOneEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends EditEmailOneEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
