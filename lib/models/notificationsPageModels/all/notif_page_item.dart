import 'package:flipkart_clone/constants/colors.dart';
import 'package:flutter/material.dart';

import 'notif_items.dart';

class NotifListTile extends StatelessWidget {
  final NotificationsItem notificationsItem;
  final int index;
  const NotifListTile({
    Key? key,
    required this.notificationsItem,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: KWhite,
      minVerticalPadding: 18,
      leading: notificationsItem.leadingIcon,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${notificationsItem.title}',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4),
            child: Text(
              '${notificationsItem.subtitleOne}',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
      subtitle: Text(
        '${notificationsItem.subtitleTwo}',
        style: const TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 202, 202, 202),
        ),
      ),
      trailing: SizedBox(
        height: 40,
        child: Image.asset('${notificationsItem.trailing}'),
      ),
    );
  }
}
