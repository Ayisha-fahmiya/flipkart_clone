import 'package:flipkart_clone/models/categoryPageModels/trendingStore/trending_items.dart';
import 'package:flutter/material.dart';

class TrendingStoreItem extends StatelessWidget {
  final TrendingItems trendingItems;
  final int index;
  const TrendingStoreItem({
    Key? key,
    required this.trendingItems,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: trendingItems.color,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "${trendingItems.title}",
                      style: TextStyle(
                        // height: 1.4,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Text(
                  '${trendingItems.subtitle}',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 107, 107, 107),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: SizedBox(
            height: 132,
            child: Image.asset(
              "${trendingItems.image}",
              alignment: Alignment.bottomRight,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
