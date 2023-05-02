import 'package:flipkart_clone/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 340,
        color: KWhite,
        child: Column(
          children: [
            Lottie.network(
                'https://assets4.lottiefiles.com/packages/lf20_atunf5kv.json',
                fit: BoxFit.fitHeight,
                height: 200),
            const Text(
              "Your cart is empty!",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 24),
              child: Text(
                "Add items to it now",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              width: 160,
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor: MaterialStateProperty.all(KDefaultColor),
                ),
                child: const Text("Shop now"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
