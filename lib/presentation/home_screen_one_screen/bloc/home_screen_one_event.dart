// ignore_for_file: must_be_immutable

part of 'home_screen_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeScreenOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomeScreenOneEvent extends Equatable {}

/// Event that is dispatched when the HomeScreenOne widget is first created.
class HomeScreenOneInitialEvent extends HomeScreenOneEvent {
  @override
  List<Object?> get props => [];
}
