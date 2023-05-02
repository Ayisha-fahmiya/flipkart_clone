import 'package:flipkart_clone/constants/colors.dart';
import 'package:flutter/material.dart';
import 'category_one.dart';

class CategoryPageOne extends StatelessWidget {
  final CategoryOne categoryPageOne;
  final int index;
  const CategoryPageOne({
    Key? key,
    required this.categoryPageOne,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: const Color(0xffc9e4ff),
            radius: 36,
            backgroundImage: AssetImage('${categoryPageOne.image}'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 3),
            child: Text(
              '${categoryPageOne.title}',
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: kTextColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
