// ignore_for_file: must_be_immutable

part of 'home_screen_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeScreenTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomeScreenTwoEvent extends Equatable {}

/// Event that is dispatched when the HomeScreenTwo widget is first created.
class HomeScreenTwoInitialEvent extends HomeScreenTwoEvent {
  @override
  List<Object?> get props => [];
}
