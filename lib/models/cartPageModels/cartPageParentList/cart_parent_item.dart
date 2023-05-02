import 'package:flipkart_clone/constants/colors.dart';
import 'package:flipkart_clone/models/cartPageModels/cartPageChildList/cart_items_child.dart';
import 'package:flutter/material.dart';

import '../cartPageChildList/cart_child_item.dart';

class SuggestedForYou extends StatelessWidget {
  const SuggestedForYou({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 348,
        padding: EdgeInsets.symmetric(horizontal: 6),
        color: KWhite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 12),
            Text(
              "Suggested for You",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Based on Your Activity",
              style: TextStyle(
                fontSize: 14.5,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 280,
              child: ListView.builder(
                itemBuilder: (context, index) => CartChildItem(
                  cartChildListItems: cartChildOneItems[index],
                  index: index,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: cartChildOneItems.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RecentlyViewed extends StatelessWidget {
  const RecentlyViewed({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 340,
        padding: EdgeInsets.symmetric(horizontal: 6),
        color: KWhite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 12),
            Text(
              "Recently Viewed",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 280,
              child: ListView.builder(
                itemBuilder: (context, index) => CartChildItem(
                  cartChildListItems: cartChildTwoItems[index],
                  index: index,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: cartChildTwoItems.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
