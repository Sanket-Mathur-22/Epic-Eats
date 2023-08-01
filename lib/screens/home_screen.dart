import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../consts/list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Transform.scale(
          scale: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Vx.white,
              backgroundImage: NetworkImage(
                  "https://pbs.twimg.com/profile_images/1457288192676151300/jJ30l-Oh_400x400.jpg"),
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Column(
          children: [
            "DELIVERY TO".text.bold.size(5).make(),
            2.heightBox,
            "Bhilai , CG".text.size(20).bold.make(),
          ],
        ),
        actions: [
          Icon(Icons.filter_alt),
          VxDarkModeButton(
            showSingleIcon: true,
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            10.heightBox,
            GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Vx.gray200,
                ),
                height: 50,
                width: 330,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Icon(
                        Icons.search,
                        color: Vx.black,
                      ),
                    ),
                    5.widthBox,
                    "Search for food".text.black.make(),
                  ],
                ),
              ),
            ),
            25.heightBox,

            // Swiper brands
            VxSwiper.builder(
              aspectRatio: 16 / 9,
              autoPlay: true,
              height: 180,
              enlargeCenterPage: true,
              itemCount: slidersList.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Image.asset(slidersList[index], fit: BoxFit.fill),
                )
                    .box
                    .rounded
                    .clip(Clip.antiAlias)
                    .margin(const EdgeInsets.symmetric(horizontal: 8))
                    .make();
              },
            ),

            25.heightBox,
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Row(
                children: [
                  "The taste you like 😋".text.size(20).bold.make(),
                ],
              ),
            ),
            5.heightBox,

            SizedBox(
              height: 140,
              child: ListView.builder(
                itemCount: foodItems.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Vx.yellow100,
                        radius: 35,
                        backgroundImage: AssetImage(foodItems[index]),
                      ).p8(),
                      5.heightBox,
                      foodTexts[index].text.size(12).bold.make(),
                    ],
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Featured Restaurants 🏨".text.size(20).bold.make(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: "See all ➔".text.make(),
                  )
                ],
              ),
            ),

            // GridView of featured restaurants
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 12.0,
              ),
              itemCount: restaurantNames.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent),
                    padding: EdgeInsets.all(8),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            foodItems[index],
                            height: 100,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                color: Colors.green,
                                child: Row(
                                  children: [
                                    Icon(Icons.star,
                                        color: Colors.black, size: 16),
                                    SizedBox(width: 4),
                                    restaurantRatings[index].text.black.make(),
                                  ],
                                ),
                              ),
                              restaurantNames[index].text.bold.make(),
                            ],
                          ),
                          5.heightBox,
                          "Order Now".text.amber500.bold.make(),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedindex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
