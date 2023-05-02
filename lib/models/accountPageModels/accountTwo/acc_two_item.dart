import 'package:flipkart_clone/constants/colors.dart';
import 'package:flipkart_clone/models/accountPageModels/accountTwo/acc_cat_two_items.dart';
import 'package:flutter/material.dart';

class AccountTwoItem extends StatelessWidget {
  final AcountCategoryTwoIetems acountCategoryTwoIetems;
  final int index;
  const AccountTwoItem({
    Key? key,
    required this.acountCategoryTwoIetems,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity(vertical: -4),
      leading: Text(
        '${acountCategoryTwoIetems.title}',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );
  }
}

class AccountListTwo extends StatelessWidget {
  const AccountListTwo({
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
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => AccountTwoItem(
          acountCategoryTwoIetems: accTwoItems[index],
          index: index,
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: 3,
      ),
    );
  }
}
