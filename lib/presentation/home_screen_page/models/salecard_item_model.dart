import '../../../core/app_export.dart';

/// This class is used in the [salecard_item_widget] screen.
class SalecardItemModel {
  SalecardItemModel({
    this.image,
    this.title,
    this.price,
    this.description,
    this.id,
  }) {
    image = image ?? ImageConstant.imgRectangle484;
    title = title ?? "Solar panel";
    price = price ?? "₦2,000";
    description = description ??
        "Explore the Future of Sustainable Energy with Our Premium Solar Panels for Sale! ";
    id = id ?? "";
  }

  String? image;

  String? title;

  String? price;

  String? description;

  String? id;
}
