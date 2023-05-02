import 'package:flipkart_clone/constants/colors.dart';
import 'package:flipkart_clone/models/accountPageModels/accountThree/acc_cat_three_items.dart';
import 'package:flutter/material.dart';

class AccountListThree extends StatelessWidget {
  const AccountListThree({
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
            blurRadius: 1.0,
            offset: Offset(0.0, 1.0),
          ),
        ],
      ),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => AccountThreeItem(
          acountCategoryThreeItems: accThreeItems[index],
          index: index,
        ),
        separatorBuilder: (context, index) => Divider(),
        itemCount: 6,
      ),
    );
  }
}

class AccountThreeItem extends StatelessWidget {
  final AcountCategoryThreeItems acountCategoryThreeItems;
  final int index;
  const AccountThreeItem({
    Key? key,
    required this.acountCategoryThreeItems,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: const VisualDensity(vertical: -4),
      leading: Text(
        '${acountCategoryThreeItems.title}',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      trailing: Text(
        "${acountCategoryThreeItems.trailing}",
        style: const TextStyle(color: Colors.grey),
      ),
    );
  }
}
