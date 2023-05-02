import 'package:flutter/material.dart';
import '../../../constants/colors.dart';

class PageThree extends StatelessWidget {
  const PageThree({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Primebook 4G Laptop\nBuilt for Learning',
              style: TextStyle(
                color: Color(0xffb6b9c0),
              ),
            ),
            Text(
              'From ₹625/M*',
              style: TextStyle(
                color: KWhite,
                fontSize: 17,
                fontWeight: FontWeight.bold,
                height: 1.5,
              ),
            ),
            Text(
              'Total Savings up to ₹12,000',
              style: TextStyle(
                  color: Color(0xffb6b9c0), fontSize: 13, height: 1.5),
            ),
            Text(
              'Sale starts 11th March, 12 PM',
              style: TextStyle(
                color: Color(0xffb6b9c0),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 188,
          child: Image.asset(
            'assets/images/homePage/autoScrollingPages/pageThreeCard.png',
          ),
        ),
      ],
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  'motorola',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  height: 16,
                  width: 1,
                  color: Colors.grey,
                ),
                const Text(
                  'Flipkart',
                  style: TextStyle(
                    fontSize: 12,
                    color: KDefaultColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lato',
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 20,
                  child: Image.asset('assets/images/flipkartIcon.png'),
                ),
              ],
            ),
            const SizedBox(height: 12),
            const Text(
              'moto g73 5g(8GB | 128GB)',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                height: 1.5,
              ),
            ),
            const Text(
              'Launching Tomorrow, 12PM',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Ultra Pixel Flagship Camera\nIndia's 1st MediaTek Dimensity 930",
              style: TextStyle(
                height: 1.5,
                fontSize: 13,
                color: Color.fromARGB(255, 104, 104, 104),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 151,
          child: Image.asset(
              'assets/images/homePage/autoScrollingPages/pageTwoCard.png'),
        ),
      ],
    );
  }
}

class PageOne extends StatelessWidget {
  const PageOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: KDefaultPadding),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Row(
              children: [
                const Text(
                  'Super Coin',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: KDefaultColor,
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 20,
                  child: Image.asset(
                      'assets/images/homePage/HomePageCategoryOne/superCoin.png'),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 4),
              child: Text(
                'Get 1-Day Early Access to Sale',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Text(
              'Claim Your Ticket Now',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'Use 40 SuperCoins',
              style: TextStyle(
                fontSize: 13,
                color: Color.fromARGB(255, 102, 102, 102),
              ),
            ),
          ],
        ),
        Image.asset(
            'assets/images/homePage/autoScrollingPages/pageOneCard.png'),
      ],
    );
  }
}
