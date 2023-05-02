import 'package:flipkart_clone/constants/colors.dart';
import 'package:flutter/material.dart';

class AcountCategoryOneIetems {
  final Icon? leadingIcon;
  final String? title;

  AcountCategoryOneIetems({
    this.leadingIcon,
    this.title,
  });
}

double size = 38;
List<AcountCategoryOneIetems> accOneItems = [
  AcountCategoryOneIetems(
    leadingIcon: Icon(
      Icons.verified_outlined,
      color: KDefaultColor,
      size: size,
    ),
    title: "Flipkart Plus Zone",
  ),
  AcountCategoryOneIetems(
    leadingIcon: Icon(
      Icons.drive_folder_upload_rounded,
      color: KDefaultColor,
      size: size,
    ),
    title: "My Orders",
  ),
  AcountCategoryOneIetems(
    leadingIcon: Icon(
      Icons.favorite,
      color: KDefaultColor,
      size: size,
    ),
    title: "My Wishlist",
  ),
  AcountCategoryOneIetems(
    leadingIcon: Icon(
      Icons.account_balance_wallet,
      color: KDefaultColor,
      size: size,
    ),
    title: "Flipkart Pay Later",
  ),
  AcountCategoryOneIetems(
    leadingIcon: Icon(
      Icons.recommend_outlined,
      color: KDefaultColor,
      size: size,
    ),
    title: "Creator Studio",
  ),
  AcountCategoryOneIetems(
    leadingIcon: Icon(
      Icons.credit_score_rounded,
      color: KDefaultColor,
      size: size,
    ),
    title: "Flipkart Axis Bank Credit Card",
  ),
  AcountCategoryOneIetems(
    leadingIcon: Icon(
      Icons.credit_card_rounded,
      color: KDefaultColor,
      size: size,
    ),
    title: "My Cards & Wallet",
  ),
  AcountCategoryOneIetems(
    leadingIcon: Icon(
      Icons.redeem_rounded,
      color: KDefaultColor,
      size: size,
    ),
    title: "My Rewards",
  ),
  AcountCategoryOneIetems(
    leadingIcon: Icon(
      Icons.rate_review,
      color: KDefaultColor,
      size: size,
    ),
    title: "My Reviews",
  ),
  AcountCategoryOneIetems(
    leadingIcon: Icon(
      Icons.forum,
      color: KDefaultColor,
      size: size,
    ),
    title: "My Questions & Answers",
  ),
  AcountCategoryOneIetems(
    leadingIcon: Icon(
      Icons.location_on,
      color: KDefaultColor,
      size: size,
    ),
    title: "My Addresses",
  ),
  AcountCategoryOneIetems(
    leadingIcon: Icon(
      Icons.help,
      color: KDefaultColor,
      size: size,
    ),
    title: "Help Centre",
  ),
];
