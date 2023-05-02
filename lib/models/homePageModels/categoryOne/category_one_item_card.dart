import 'package:flutter/material.dart';

import 'home_page_category_one.dart';

class CategoryOneItemCard extends StatelessWidget {
  final HomePageCategoryOne homePageCategoryOne;
  final int index;
  const CategoryOneItemCard({
    Key? key,
    required this.homePageCategoryOne,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 14.0, bottom: 14.0),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Color(0xfff1f5fe),
                child: SizedBox(
                  height: 36,
                  width: 36,
                  child: Image.asset('${homePageCategoryOne.image}'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(),
              child: Text(
                '${homePageCategoryOne.title}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
