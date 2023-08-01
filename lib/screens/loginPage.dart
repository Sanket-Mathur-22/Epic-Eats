import 'package:flutter/material.dart';
import 'package:food_app/screens/home_screen.dart';
import 'package:food_app/screens/signup_screen.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import 'otp_verify.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Vx.blue700, Vx.cyan400],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            30.heightBox,
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Colors.white,
                  onPressed: () {
                    // Add your back button functionality here
                    Navigator.of(context).pop();
                  },
                ),
                const SizedBox(width: 40),
                Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.white),
                ),
                2.widthBox,
                Transform.scale(
                  scale: 0.8,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(SignUpScreen());
                    },
                    child: Text("Get Started"),
                  ),
                ),
              ],
            ),
            80.heightBox,
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                padding: EdgeInsets.all(16),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Welcome Back",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Rediscover limitless services in one app",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      30.heightBox,
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        height: 50,
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(10),
                        //   border: Border.all(color: Colors.grey),
                        // ),
                        child: Row(
                          children: [
                            Text(
                              "+91",
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(width: 8),
                            Expanded(
                              child: TextField(
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  hintText: "Enter mobile no",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      18.heightBox,
                      Row(
                        children: [
                          Checkbox(value: false, onChanged: print),
                          "I agree the".text.size(12).make(),
                          5.widthBox,
                          "Terms & Services and Privacy Policy"
                              .text
                              .green700
                              .underline
                              .size(12)
                              .make(),
                        ],
                      ),
                      15.heightBox,
                      GestureDetector(
                        onTap: () {
                          Get.to(HomeScreen());
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue[900],
                          ),
                          child: Center(
                            child: "Continue".text.size(15).white.make(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
