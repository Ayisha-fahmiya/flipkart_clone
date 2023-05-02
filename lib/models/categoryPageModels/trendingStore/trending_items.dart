import 'package:flutter/widgets.dart';

class TrendingItems {
  final String? image, title, subtitle;
  final Color? color;

  TrendingItems({
    this.image,
    this.title,
    this.subtitle,
    this.color,
  });
}

List<TrendingItems> trendingItemsList = [
  TrendingItems(
    color: Color(0xffa6e7fd),
    image: "assets/images/categoryPage/TrendingStore/imageOne.png",
    title: "Student's Club",
    subtitle: "Back-To-School",
  ),
  TrendingItems(
    color: Color(0xfff1e0d0),
    image: "assets/images/categoryPage/TrendingStore/imageTwo.png",
    title: "Flipkart Samarth",
    subtitle: "Handicrafts, Decor, Art...",
  ),
  TrendingItems(
    color: Color(0xfffcbfce),
    image: "assets/images/categoryPage/TrendingStore/imageThree.png",
    title: "InternationalStore",
    subtitle: "Brands Across the World",
  ),
  TrendingItems(
    color: Color(0xffccfce4),
    image: "assets/images/categoryPage/TrendingStore/imageFour.png",
    title: "Flipkart Green",
    subtitle: "The Sustainable Store",
  ),
  TrendingItems(
    color: Color(0xfffda9a7),
    image: "assets/images/categoryPage/TrendingStore/imageFive.png",
    title: "Flipkart Originals",
    subtitle: "Fashion, Electronics, Beauty\nAppliances, Furniture...",
  ),
  TrendingItems(
    color: Color(0xff92c4e5),
    image: "assets/images/categoryPage/TrendingStore/imageSix.png",
    title: "Travel Store",
    subtitle: "See the World\nwith Ease",
  ),
  TrendingItems(
    color: Color(0xff69e0f4),
    image: "assets/images/categoryPage/TrendingStore/imageSeven.png",
    title: "Flipkart",
    subtitle: "Innovative & Unique",
  ),
  TrendingItems(
    color: Color(0xffd7f1fe),
    image: "assets/images/categoryPage/TrendingStore/imageEight.png",
    title: "Launch Hub",
    subtitle: "New Launches",
  ),
];
