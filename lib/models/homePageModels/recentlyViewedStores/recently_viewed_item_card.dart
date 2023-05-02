import 'package:flipkart_clone/models/homePageModels/recentlyViewedStores/recently_viewed_category.dart';
import 'package:flutter/material.dart';

class RecentlyViewedItems extends StatelessWidget {
  final RecentlyViewedStores recentlyViewedStores;
  final int index;
  const RecentlyViewedItems({
    Key? key,
    required this.recentlyViewedStores,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6),
      width: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 194, 194, 194),
            blurRadius: 2,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 100,
            child: Image.asset('${recentlyViewedStores.image}'),
          ),
          SizedBox(
            height: 30,
            child: Center(
              child: Text(
                '${recentlyViewedStores.title}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 100, 100, 100),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
