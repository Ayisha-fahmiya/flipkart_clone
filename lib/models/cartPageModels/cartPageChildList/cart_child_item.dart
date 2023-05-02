import 'package:flipkart_clone/constants/colors.dart';
import 'package:flutter/material.dart';
import 'cart_items_child.dart';

class CartChildItem extends StatelessWidget {
  final CartChildListOneItems cartChildListItems;
  final int index;
  const CartChildItem({
    Key? key,
    required this.cartChildListItems,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        width: 154,
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromARGB(255, 236, 236, 236),
            width: 1,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 166,
              child: Image.asset(
                "${cartChildListItems.image}",
                fit: BoxFit.cover,
              ),
            ),
            Text(
              "${cartChildListItems.title}",
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                children: [
                  Text(
                    "₹${cartChildListItems.prize}",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "${cartChildListItems.originalPrize}",
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  "${cartChildListItems.offer}",
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 62, 143, 64),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: SizedBox(
                    height: 16,
                    child: Image.asset(
                        "assets/images/homePage/HomePageCategoryOne/plus.png"),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Plus",
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Lato',
                        color: KDefaultColor,
                      ),
                    ),
                    Text(
                      "F-ASSURED",
                      style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.w900,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 6),
            SizedBox(
              height: 32,
              width: 136,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text(
                  "Add to cart",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: KDefaultColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
