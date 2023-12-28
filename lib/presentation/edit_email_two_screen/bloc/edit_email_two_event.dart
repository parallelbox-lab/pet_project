// ignore_for_file: must_be_immutable

part of 'edit_email_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EditEmailTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EditEmailTwoEvent extends Equatable {}

/// Event that is dispatched when the EditEmailTwo widget is first created.
class EditEmailTwoInitialEvent extends EditEmailTwoEvent {
  @override
  List<Object?> get props => [];
}
