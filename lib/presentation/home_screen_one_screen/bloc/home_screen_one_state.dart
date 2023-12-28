// ignore_for_file: must_be_immutable

part of 'home_screen_one_bloc.dart';

/// Represents the state of HomeScreenOne in the application.
class HomeScreenOneState extends Equatable {
  HomeScreenOneState({this.homeScreenOneModelObj});

  HomeScreenOneModel? homeScreenOneModelObj;

  @override
  List<Object?> get props => [
        homeScreenOneModelObj,
      ];
  HomeScreenOneState copyWith({HomeScreenOneModel? homeScreenOneModelObj}) {
    return HomeScreenOneState(
      homeScreenOneModelObj:
          homeScreenOneModelObj ?? this.homeScreenOneModelObj,
    );
  }
}
