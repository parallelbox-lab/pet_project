// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'salecardgrid_item_model.dart';

/// This class defines the variables used in the [home_screen_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeScreenOneModel extends Equatable {
  HomeScreenOneModel({this.salecardgridItemList = const []}) {}

  List<SalecardgridItemModel> salecardgridItemList;

  HomeScreenOneModel copyWith(
      {List<SalecardgridItemModel>? salecardgridItemList}) {
    return HomeScreenOneModel(
      salecardgridItemList: salecardgridItemList ?? this.salecardgridItemList,
    );
  }

  @override
  List<Object?> get props => [salecardgridItemList];
}
