import 'package:green_mart/core/constants/app_pictures.dart';

class AccountScreenDetailsModel {
  final String icon;
  final String title;

  AccountScreenDetailsModel({required this.icon, required this.title});
}

List<AccountScreenDetailsModel> detailsList = [
  AccountScreenDetailsModel(icon: AppPictures.ordersIconSVG, title: "Orders"),
  AccountScreenDetailsModel(
    icon: AppPictures.myDetailsIconSVG,
    title: "My Details",
  ),
  AccountScreenDetailsModel(
    icon: AppPictures.deliveryIconSVG,
    title: "Delivery Address",
  ),
  AccountScreenDetailsModel(
    icon: AppPictures.paymentIconSVG,
    title: "Payment Methods",
  ),
  AccountScreenDetailsModel(
    icon: AppPictures.promoIconSVG,
    title: "Promo Code",
  ),
  AccountScreenDetailsModel(
    icon: AppPictures.notifecationsIconSVG,
    title: "Notifecations",
  ),
  AccountScreenDetailsModel(icon: AppPictures.helpIconSVG, title: "Help"),
  AccountScreenDetailsModel(icon: AppPictures.aboutIconSVG, title: "About"),
];
