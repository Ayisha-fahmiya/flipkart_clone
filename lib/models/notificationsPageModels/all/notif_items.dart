import 'package:flutter/material.dart';

class NotificationsItem {
  final Icon? leadingIcon;
  final String? title, subtitleOne, subtitleTwo, trailing;

  NotificationsItem({
    this.leadingIcon,
    this.title,
    this.subtitleOne,
    this.subtitleTwo,
    this.trailing,
  });
}

List<NotificationsItem> notifItems = [
  NotificationsItem(
    leadingIcon: Icon(Icons.info),
    title: "26 SuperCoins credited in last 15 days!",
    subtitleOne: "You have 122 supercoins. Use them to Shop,\nPlay & win",
    subtitleTwo: "26 days ago",
    trailing: "assets/images/homePage/HomePageCategoryOne/superCoin.png",
  ),
];
