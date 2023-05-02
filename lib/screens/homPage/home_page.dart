import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flipkart_clone/constants/colors.dart';
import 'package:flipkart_clone/models/categoryPageModels/categoryOne/category_1_item.dart';
import 'package:flipkart_clone/models/categoryPageModels/trendingStore/trending_items.dart';
import 'package:flipkart_clone/models/homePageModels/categoryOne/home_page_category_one.dart';
import 'package:flipkart_clone/models/homePageModels/categoryTwo/home_page_category_two.dart';
import 'package:flutter/material.dart';
import '../../models/accountPageModels/accountOne/acc_one_item.dart';
import '../../models/accountPageModels/accountThree/acc_three_item.dart';
import '../../models/accountPageModels/accountTwo/acc_two_item.dart';
import '../../models/cartPageModels/cartPageParentList/cart_parent_item.dart';
import '../../models/categoryPageModels/MoreOnFlipkart/MoreOnFlipkart/more_on_item.dart';
import '../../models/categoryPageModels/MoreOnFlipkart/MoreOnFlipkart/more_on_items.dart';
import '../../models/categoryPageModels/categoryOne/category_one.dart';
import '../../models/categoryPageModels/trendingStore/trending_store_item.dart';
import '../../models/homePageModels/categoryOne/category_one_item_card.dart';
import '../../models/homePageModels/categoryTwo/category_two_item_card.dart';
import '../../models/homePageModels/recentlyViewedStores/recently_viewed_category.dart';
import '../../models/homePageModels/recentlyViewedStores/recently_viewed_item_card.dart';
import '../../models/notificationsPageModels/all/notif_items.dart';
import '../../models/notificationsPageModels/all/notif_page_item.dart';
import 'homePageComponents/auto_scrolling_page.dart';
import 'homePageComponents/empty_cart.dart';
import 'homePageComponents/search_text_field.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isOne = true;
  bool buttonOneclicked = true;
  bool buttonTwoclicked = false;
  int selectedIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final GlobalKey _bottomNavigationKey = GlobalKey();

  Widget bodyFunction() {
    switch (selectedIndex) {
      case 0:
        return ListView(
          children: [
            SizedBox(
              height: 60,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 6),
                    child: SizedBox(
                      height: 50,
                      child: Image.asset('assets/images/flipkartIcon.png'),
                    ),
                  ),
                  const Text(
                    'Flipkart',
                    style: TextStyle(
                      color: KDefaultColor,
                      fontFamily: 'Lato',
                      fontSize: 26,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10, top: 10),
                  child: Column(
                    children: [
                      const Text(
                        'Brand Mall',
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      ),
                      Switch(
                        value: isOne ? false : true,
                        onChanged: (value) {
                          setState(() {
                            isOne = !isOne;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                const SearchTextField(),
              ],
            ),
            Stack(
              children: [
                CarouselSlider.builder(
                  itemCount: images.length,
                  itemBuilder: (context, index, realIndex) {
                    return Container(
                      child: images[index],
                    );
                  },
                  options: CarouselOptions(
                    autoPlay: true,
                    autoPlayAnimationDuration: Duration(seconds: 1),
                    autoPlayCurve: Curves.linear,
                    height: 180,
                    viewportFraction: 1.0,
                    aspectRatio: 2.7,
                    onPageChanged: (index, reason) {
                      setState(() {
                        imageIndex = index;
                      });
                    },
                  ),
                ),
                Positioned(
                  bottom: 8,
                  left: 172,
                  child: Container(
                    height: 12,
                    width: 46,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(38, 0, 0, 0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: CarouselIndicator(
                        count: images.length,
                        index: imageIndex,
                        activeColor: KWhite,
                        color: Colors.grey,
                        width: 8,
                        height: 8,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => CategoryOneItemCard(
                  index: index,
                  homePageCategoryOne: itemsOne[index],
                ),
                itemCount: itemsOne.length,
              ),
            ),
            SizedBox(
              height: 129,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => CategoryTwoItemCard(
                  index: index,
                  homePageCategoryTwo: itemsTwo[index],
                ),
                itemCount: itemsTwo.length,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 24, left: 18, bottom: 24),
              child: Text(
                'Recently Viewed Stores',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 178,
              child: ListView.builder(
                itemBuilder: (context, index) => RecentlyViewedItems(
                  index: index,
                  recentlyViewedStores: recentlyViewedStores[index],
                ),
                scrollDirection: Axis.horizontal,
                itemCount: recentlyViewedStores.length,
              ),
            ),
          ],
        );
        break;
      case 1:
        return ListView(
          children: [
            Container(
              height: 44,
              color: KDefaultColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'All Categories',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: KWhite,
                        fontSize: 16,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: KWhite,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 576,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: categoryOne.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 16,
                ),
                itemBuilder: (context, index) => CategoryPageOne(
                  categoryPageOne: categoryOne[index],
                  index: index,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: Row(
                children: [
                  const SizedBox(width: 12),
                  const Text(
                    'More on Flipkart',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      color: Colors.grey,
                      height: 0.7,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 220,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: moreOnFlipkart.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 2,
                ),
                itemBuilder: (context, index) => MoreOnFlipkartItem(
                    index: index, moreOnItems: moreOnFlipkart[index]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: Row(
                children: [
                  const SizedBox(width: 12),
                  const Text(
                    'Trending Stores',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      color: Colors.grey,
                      height: 0.7,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
              height: 740,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 8,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 24,
                  mainAxisSpacing: 24,
                ),
                itemBuilder: (context, index) => TrendingStoreItem(
                  index: index,
                  trendingItems: trendingItemsList[index],
                ),
              ),
            ),
          ],
        );
        break;
      case 2:
        return Scaffold(
          backgroundColor: Color(0xfff1f2f4),
          appBar: AppBar(
            elevation: 0,
            toolbarHeight: 44,
            backgroundColor: KDefaultColor,
            leading: Row(
              children: const [
                SizedBox(width: 12),
                Text(
                  'Notifications',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            leadingWidth: 110,
          ),
          body: Column(
            children: [
              Container(
                color: KWhite,
                child: Row(
                  children: [
                    SizedBox(width: 12),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          buttonOneclicked = true;
                          buttonTwoclicked = false;
                        });
                      },
                      style: OutlinedButton.styleFrom(
                        minimumSize: const Size(72, 34),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        side: BorderSide(
                          width: 1.5,
                          color: buttonOneclicked ? KDefaultColor : Colors.grey,
                        ),
                        foregroundColor:
                            buttonOneclicked ? KDefaultColor : Colors.black,
                      ),
                      child: const Text('All'),
                    ),
                    const SizedBox(width: 12),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          buttonOneclicked = false;
                          buttonTwoclicked = true;
                        });
                      },
                      style: OutlinedButton.styleFrom(
                        minimumSize: const Size(136, 34),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        side: BorderSide(
                          width: 1.5,
                          color: buttonTwoclicked ? KDefaultColor : Colors.grey,
                        ),
                        foregroundColor:
                            buttonTwoclicked ? KDefaultColor : Colors.black,
                      ),
                      child: Row(
                        children: const [
                          Icon(Icons.info),
                          SizedBox(width: 6),
                          Text('Order Info'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 0.8,
                color: Colors.grey,
              ),
              SizedBox(
                height: 85,
                child: ListView.builder(
                  itemCount: notifItems.length,
                  itemBuilder: (context, index) => NotifListTile(
                    index: index,
                    notificationsItem: notifItems[index],
                  ),
                ),
              ),
            ],
          ),
        );
        break;
      case 3:
        FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
        return Scaffold(
          backgroundColor: Colors.white54,
          appBar: AppBar(
            backgroundColor: KDefaultColor,
            leading: Row(
              children: const [
                SizedBox(width: 12),
                Text(
                  'Account',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            leadingWidth: 100,
          ),
          body: const CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: AccountListOne(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(height: 12),
              ),
              SliverToBoxAdapter(
                child: AccountListTwo(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(height: 12),
              ),
              SliverToBoxAdapter(
                child: AccountListThree(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(height: 4),
              ),
            ],
          ),
        );
        break;
      case 4:
        return const Scaffold(
          backgroundColor: Color(0xfff2f3f5),
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                title: Text("My Cart"),
                backgroundColor: KDefaultColor,
                elevation: 0,
                floating: true,
              ),
              EmptyCart(),
              SuggestedForYou(),
              RecentlyViewed(),
              SliverToBoxAdapter(child: SizedBox(height: 10)),
              SliverToBoxAdapter(child: SizedBox(height: 10)),
            ],
          ),
        );
        break;
      default:
        return Container(color: Colors.white);
        break;
    }
  }

  final List<Container> images = [
    Container(
      width: double.infinity,
      color: Color(0xfffeebc6),
      child: PageOne(),
    ),
    Container(
      padding: const EdgeInsets.all(8),
      width: double.infinity,
      child: PageTwo(),
    ),
    Container(
      padding: const EdgeInsets.only(left: 16, top: 18),
      height: 180,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff471934),
            Color(0xff191d3c),
            Color(0xff38546d),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [
            0.2,
            0.7,
            1,
          ],
        ),
      ),
      child: PageThree(),
    ),
  ];

  int imageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: bodyFunction(),
      bottomNavigationBar: buildNavBar(),
    );
  }

  BottomNavigationBar buildNavBar() {
    return BottomNavigationBar(
      selectedItemColor: KDefaultColor,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
      unselectedLabelStyle:
          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.grid_view),
          label: 'Categories',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_outlined),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined),
          label: 'Account',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          label: 'Cart',
        ),
      ],
      currentIndex: selectedIndex,
      onTap: onItemTapped,
    );
  }
}
