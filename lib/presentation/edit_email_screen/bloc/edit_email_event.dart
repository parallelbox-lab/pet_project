// ignore_for_file: must_be_immutable

part of 'edit_email_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EditEmail widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EditEmailEvent extends Equatable {}

/// Event that is dispatched when the EditEmail widget is first created.
class EditEmailInitialEvent extends EditEmailEvent {
  @override
  List<Object?> get props => [];
}
