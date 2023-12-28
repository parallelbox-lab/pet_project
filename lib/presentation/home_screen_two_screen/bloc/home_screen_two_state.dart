// ignore_for_file: must_be_immutable

part of 'home_screen_two_bloc.dart';

/// Represents the state of HomeScreenTwo in the application.
class HomeScreenTwoState extends Equatable {
  HomeScreenTwoState({
    this.searchController,
    this.homeScreenTwoModelObj,
  });

  TextEditingController? searchController;

  HomeScreenTwoModel? homeScreenTwoModelObj;

  @override
  List<Object?> get props => [
        searchController,
        homeScreenTwoModelObj,
      ];
  HomeScreenTwoState copyWith({
    TextEditingController? searchController,
    HomeScreenTwoModel? homeScreenTwoModelObj,
  }) {
    return HomeScreenTwoState(
      searchController: searchController ?? this.searchController,
      homeScreenTwoModelObj:
          homeScreenTwoModelObj ?? this.homeScreenTwoModelObj,
    );
  }
}
