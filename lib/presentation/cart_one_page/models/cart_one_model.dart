// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'solarpanellist_item_model.dart';

/// This class defines the variables used in the [cart_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class CartOneModel extends Equatable {
  CartOneModel({this.solarpanellistItemList = const []}) {}

  List<SolarpanellistItemModel> solarpanellistItemList;

  CartOneModel copyWith(
      {List<SolarpanellistItemModel>? solarpanellistItemList}) {
    return CartOneModel(
      solarpanellistItemList:
          solarpanellistItemList ?? this.solarpanellistItemList,
    );
  }

  @override
  List<Object?> get props => [solarpanellistItemList];
}
