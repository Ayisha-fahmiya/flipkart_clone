import 'package:flipkart_clone/constants/colors.dart';
import 'package:flutter/material.dart';
import 'acc_cat_one_items.dart';

class AccountOneItem extends StatelessWidget {
  final AcountCategoryOneIetems acountCategoryOneIetems;
  final int index;
  const AccountOneItem({
    Key? key,
    required this.acountCategoryOneIetems,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: acountCategoryOneIetems.leadingIcon,
      title: Text(
        "${acountCategoryOneIetems.title}",
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class AccountListOne extends StatelessWidget {
  const AccountListOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: KWhite,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(201, 199, 199, 1),
            blurRadius: 3.0,
            offset: Offset(0.0, 1.0),
          ),
        ],
      ),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemCount: accOneItems.length,
        itemBuilder: (context, index) => AccountOneItem(
          index: index,
          acountCategoryOneIetems: accOneItems[index],
        ),
      ),
    );
  }
}
