import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import 'loginPage.dart';
import 'otp_verify.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  bool isCheckboxChecked = false;

  void _onCheckboxChanged(bool? newValue) {
    setState(() {
      isCheckboxChecked = newValue!;
    });
  }

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
            130.heightBox,
            Expanded(
              child: Container(
                width: 500,
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
                        "Tell us more about you",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      8.heightBox,
                      Text(
                        "Let us serve you better!",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      15.heightBox,
                      RoundedDropDownMenu(title: "Occupation"),
                      12.heightBox,
                      RoundedDropDownMenu(title: "App used"),
                      12.heightBox,
                      RoundedDropDownMenu(
                          title: "Category of services you interested?"),
                      20.heightBox,
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.grey),
                        ),
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                "Allow Push Notification".text.bold.make(),
                                Spacer(),
                                Transform.scale(
                                  scale: 0.8,
                                  child: Switch(
                                    value: true,
                                    onChanged: (value) {},
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                "Allow SMS Notification".text.bold.make(),
                                Spacer(),
                                Transform.scale(
                                  scale: 0.8,
                                  child: Switch(
                                    value: true,
                                    onChanged: (value) {},
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                "Allow E-mail Notification".text.bold.make(),
                                Spacer(),
                                Transform.scale(
                                  scale: 0.8,
                                  child: Switch(
                                    value: false,
                                    onChanged: _onCheckboxChanged,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: isCheckboxChecked,
                            onChanged: _onCheckboxChanged,
                          ),
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
                      GestureDetector(
                        onTap: () {
                          if (isCheckboxChecked) {
                            Get.to(LoginPage());
                          }
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isCheckboxChecked
                                ? Colors.blue[900]
                                : Colors.grey,
                          ),
                          child: Center(
                            child: "Submit".text.size(15).white.make(),
                          ),
                        ),
                      ),
                    ],
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

class RoundedDropDownMenu extends StatelessWidget {
  final String title;

  const RoundedDropDownMenu({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        labelText: title,
        labelStyle: TextStyle(fontWeight: FontWeight.bold),
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
      items: <String>[title, "Option 1", "Option 2", "Option 3"]
          .map((String value) => DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              ))
          .toList(),
      onChanged: (String? newValue) {},
    );
  }
}
