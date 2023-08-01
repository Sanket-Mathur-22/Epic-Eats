import 'package:flutter/material.dart';
import 'package:food_app/screens/signup_screen.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:velocity_x/velocity_x.dart';

class onBoardingScreen extends StatefulWidget {
  const onBoardingScreen({super.key});

  @override
  State<onBoardingScreen> createState() => _onBoardingScreenState();
}

class _onBoardingScreenState extends State<onBoardingScreen> {
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            children: [
              Container(
                child: Stack(
                  children: [
                    Center(
                        child: Container(
                      child: Container(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            SmoothPageIndicator(
                                controller: controller,
                                count: 4,
                                effect: ExpandingDotsEffect(
                                    dotWidth: 14,
                                    spacing: 10,
                                    dotColor: Colors.black26,
                                    activeDotColor: Colors.blue),
                                onDotClicked: (index) =>
                                    controller.animateToPage(index,
                                        duration:
                                            const Duration(microseconds: 200),
                                        curve: Curves.easeIn)),
                            15.heightBox,
                            Padding(
                              padding: const EdgeInsets.only(right: 180),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  "Pickup".text.size(45).bold.blue800.make(),
                                  "& Drop".text.size(28).bold.blue800.make(),
                                  10.heightBox,
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 30),
                              width: 320,
                              child:
                                  "Uniting pick-up and drop off services in one place - the power to move , at your fingertips"
                                      .text
                                      .size(15)
                                      .make(),
                            ),
                            50.heightBox,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                    onPressed: () => controller.jumpToPage(4),
                                    child:
                                        "Skip Now".text.black.size(18).make()),
                                IconButton(
                                    onPressed: () => controller.nextPage(
                                        duration:
                                            const Duration(milliseconds: 10),
                                        curve: Curves.easeIn),
                                    icon: Icon(
                                      Icons.arrow_right,
                                      size: 50,
                                    ))
                              ],
                            )
                          ],
                        ),
                        margin: EdgeInsets.only(top: 400),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(60.0))),
                        height: 388,
                        width: 385,
                      ),
                    )),
                  ],
                ),
                color: Colors.blue,
              ),
              Container(
                child: Stack(
                  children: [
                    Center(
                        child: Container(
                      child: Container(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            SmoothPageIndicator(
                                controller: controller,
                                count: 4,
                                effect: ExpandingDotsEffect(
                                    dotWidth: 14,
                                    spacing: 10,
                                    dotColor: Colors.black26,
                                    activeDotColor: Colors.amber),
                                onDotClicked: (index) =>
                                    controller.animateToPage(index,
                                        duration:
                                            const Duration(microseconds: 200),
                                        curve: Curves.easeIn)),
                            15.heightBox,
                            Padding(
                              padding: const EdgeInsets.only(right: 220),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  "Order".text.size(28).bold.blue800.make(),
                                  "Food".text.size(45).bold.blue800.make(),
                                  10.heightBox,
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 30),
                              width: 320,
                              child:
                                  "Uniting pick-up and drop off services in one place - the power to move , at your fingertips"
                                      .text
                                      .size(15)
                                      .make(),
                            ),
                            50.heightBox,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                    onPressed: () => controller.jumpToPage(4),
                                    child:
                                        "Skip Now".text.black.size(18).make()),
                                IconButton(
                                    onPressed: () => controller.nextPage(
                                        duration:
                                            const Duration(milliseconds: 10),
                                        curve: Curves.easeIn),
                                    icon: Icon(
                                      Icons.arrow_right,
                                      size: 50,
                                    ))
                              ],
                            )
                          ],
                        ),
                        margin: EdgeInsets.only(top: 400),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(60.0))),
                        height: 388,
                        width: 385,
                      ),
                    )),
                  ],
                ),
                color: Colors.amber,
              ),
              Container(
                child: Stack(
                  children: [
                    Center(
                        child: Container(
                      child: Container(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            SmoothPageIndicator(
                                controller: controller,
                                count: 4,
                                effect: ExpandingDotsEffect(
                                    dotWidth: 14,
                                    spacing: 10,
                                    dotColor: Colors.black26,
                                    activeDotColor: Colors.green),
                                onDotClicked: (index) =>
                                    controller.animateToPage(index,
                                        duration:
                                            const Duration(microseconds: 200),
                                        curve: Curves.easeIn)),
                            15.heightBox,
                            Padding(
                              padding: const EdgeInsets.only(right: 210),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  "Shop".text.size(28).bold.blue800.make(),
                                  "Local".text.size(45).bold.blue800.make(),
                                  10.heightBox,
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 30),
                              width: 320,
                              child:
                                  "Uniting pick-up and drop off services in one place - the power to move , at your fingertips"
                                      .text
                                      .size(15)
                                      .make(),
                            ),
                            50.heightBox,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                    onPressed: () => controller.nextPage(
                                        duration:
                                            const Duration(milliseconds: 200),
                                        curve: Curves.easeIn),
                                    child:
                                        "Skip Now".text.black.size(18).make()),
                                IconButton(
                                    onPressed: () => controller.nextPage(
                                        duration:
                                            const Duration(milliseconds: 10),
                                        curve: Curves.easeIn),
                                    icon: Icon(
                                      Icons.arrow_right,
                                      size: 50,
                                    ))
                              ],
                            )
                          ],
                        ),
                        margin: EdgeInsets.only(top: 400),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(60.0))),
                        height: 388,
                        width: 385,
                      ),
                    )),
                  ],
                ),
                color: Colors.green,
              ),
              Container(
                child: Stack(
                  children: [
                    Center(
                        child: Container(
                      child: Container(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            SmoothPageIndicator(
                                controller: controller,
                                count: 4,
                                effect: ExpandingDotsEffect(
                                    dotWidth: 14,
                                    spacing: 10,
                                    dotColor: Colors.black26,
                                    activeDotColor: Colors.lightBlue),
                                onDotClicked: (index) =>
                                    controller.animateToPage(index,
                                        duration:
                                            const Duration(microseconds: 500),
                                        curve: Curves.easeIn)),
                            15.heightBox,
                            Padding(
                              padding: const EdgeInsets.only(right: 180),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  "Finder".text.size(45).bold.blue800.make(),
                                  10.heightBox,
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 30),
                              width: 320,
                              child:
                                  "Uniting pick-up and drop off services in one place - the power to move , at your fingertips"
                                      .text
                                      .size(15)
                                      .make(),
                            ),
                            120.heightBox,
                            GestureDetector(
                              onTap: () {
                                Get.to(SignUpScreen());
                              },
                              child: Container(
                                height: 50,
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.blue[900]),
                                child: Center(
                                  child:
                                      "Get Started".text.size(15).white.make(),
                                ),
                              ),
                            )
                          ],
                        ),
                        margin: EdgeInsets.only(top: 400),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(60.0))),
                        height: 388,
                        width: 385,
                      ),
                    )),
                  ],
                ),
                color: Colors.lightBlue,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
