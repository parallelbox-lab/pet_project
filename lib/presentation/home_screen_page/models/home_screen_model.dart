// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'salecard_item_model.dart';

/// This class defines the variables used in the [home_screen_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeScreenModel extends Equatable {
  HomeScreenModel({this.salecardItemList = const []}) {}

  List<SalecardItemModel> salecardItemList;

  HomeScreenModel copyWith({List<SalecardItemModel>? salecardItemList}) {
    return HomeScreenModel(
      salecardItemList: salecardItemList ?? this.salecardItemList,
    );
  }

  @override
  List<Object?> get props => [salecardItemList];
}
