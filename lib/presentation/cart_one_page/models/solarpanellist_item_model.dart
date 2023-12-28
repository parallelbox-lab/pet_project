import '../../../core/app_export.dart';

/// This class is used in the [solarpanellist_item_widget] screen.
class SolarpanellistItemModel {
  SolarpanellistItemModel({
    this.solarPanelImage,
    this.solarPanelText,
    this.exploreTheFutureText,
    this.orderAndInstallationText,
    this.priceText,
    this.id,
  }) {
    solarPanelImage = solarPanelImage ?? ImageConstant.imgRectangle490;
    solarPanelText = solarPanelText ?? "Solar panel";
    exploreTheFutureText = exploreTheFutureText ??
        "Explore the Future of Sustainable Energy with Our Premium Solar Panels for Sale! ";
    orderAndInstallationText =
        orderAndInstallationText ?? "Order and installation";
    priceText = priceText ?? "₦2,000";
    id = id ?? "";
  }

  String? solarPanelImage;

  String? solarPanelText;

  String? exploreTheFutureText;

  String? orderAndInstallationText;

  String? priceText;

  String? id;
}
