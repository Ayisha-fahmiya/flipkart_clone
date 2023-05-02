import 'package:flutter/material.dart';

import 'more_on_items.dart';

class MoreOnFlipkartItem extends StatelessWidget {
  final MoreOnItems moreOnItems;
  final int index;
  const MoreOnFlipkartItem({
    Key? key,
    required this.moreOnItems,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.only(bottom: 4.0),
          child: CircleAvatar(
            radius: 36,
            backgroundColor: Color(0xfff1f5fe),
            child: SizedBox(
              height: 42,
              width: 42,
              child: Image.asset('${moreOnItems.image}'),
            ),
          ),
        ),
        Text(
          '${moreOnItems.title}',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
