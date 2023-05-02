class HomePageCategoryTwo {
  final String? image, title, subtitle, header;
  final int? id;
  HomePageCategoryTwo({
    this.image,
    this.title,
    this.subtitle,
    this.id,
    this.header,
  });
}

List itemsTwo = [
  HomePageCategoryTwo(
    id: 1,
    image: "assets/images/homePage/HomePageCategoryTwo/mobile.png",
    title: "Best Deals on",
    subtitle: "Smartphones",
    header: "assets/images/homePage/HomePageCategoryTwo/blank.png",
  ),
  HomePageCategoryTwo(
    id: 2,
    image: "assets/images/homePage/HomePageCategoryTwo/boatEarPhone.png",
    title: "Best of Audio !!",
    subtitle: "From ₹1,099",
    header: "assets/images/homePage/HomePageCategoryTwo/boatLogo.png",
  ),
  HomePageCategoryTwo(
    id: 3,
    image: "assets/images/homePage/HomePageCategoryTwo/fireBolttWatch.png",
    title: "1.9 Large Display",
    subtitle: "Just ₹1,999",
    header: "assets/images/homePage/HomePageCategoryTwo/fireBolttLogo.png",
  ),
];
