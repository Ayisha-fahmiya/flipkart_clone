import 'package:flipkart_clone/models/homePageModels/categoryTwo/home_page_category_two.dart';
import 'package:flutter/material.dart';

class CategoryTwoItemCard extends StatelessWidget {
  final HomePageCategoryTwo homePageCategoryTwo;
  final int index;
  const CategoryTwoItemCard({
    Key? key,
    required this.homePageCategoryTwo,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.only(top: 8),
        margin: const EdgeInsets.only(left: 11.0),
        width: 116,
        decoration: BoxDecoration(
          color: const Color(0xffe6edfd),
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: const Color.fromARGB(255, 224, 224, 224)),
        ),
        child: GridTile(
          header: Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: SizedBox(
              height: 14,
              child: Image.asset(
                "${homePageCategoryTwo.header}",
                alignment: Alignment.topLeft,
              ),
            ),
          ),
          footer: Container(
            padding: const EdgeInsets.all(2),
            height: 44,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(4),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('${homePageCategoryTwo.title}'),
                Text(
                  '${homePageCategoryTwo.subtitle}',
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          child: Image.asset(
            '${homePageCategoryTwo.image}',
          ),
        ),
      ),
    );
  }
}
