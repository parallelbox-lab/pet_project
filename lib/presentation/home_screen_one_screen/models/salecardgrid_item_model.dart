import '../../../core/app_export.dart';

/// This class is used in the [salecardgrid_item_widget] screen.
class SalecardgridItemModel {
  SalecardgridItemModel({
    this.image,
    this.text1,
    this.text2,
    this.text3,
    this.id,
  }) {
    image = image ?? ImageConstant.imgRectangle484;
    text1 = text1 ?? "Solar panel";
    text2 = text2 ?? "₦2,000";
    text3 = text3 ??
        "Explore the Future of Sustainable Energy with Our Premium Solar Panels for Sale! ";
    id = id ?? "";
  }

  String? image;

  String? text1;

  String? text2;

  String? text3;

  String? id;
}
