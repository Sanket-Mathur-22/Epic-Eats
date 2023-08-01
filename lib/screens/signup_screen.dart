import 'package:flutter/material.dart';
import 'package:food_app/screens/loginPage.dart';
import 'package:food_app/screens/otp_verify.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your name';
    }
    return null;
  }

  String? validateMobile(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your mobile number';
    }
    return null;
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email address';
    }
    if (!value.contains('@')) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  void _submitForm() {
    if (_formKey.currentState?.validate() ?? false) {
      Get.to(OtpVerify());
    }
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                const SizedBox(width: 40),
                Text(
                  "Already have an account?",
                  style: TextStyle(color: Colors.white),
                ),
                10.widthBox,
                ElevatedButton(
                  onPressed: () {
                    Get.to(LoginPage());
                  },
                  child: Text("Login"),
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
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Get Started...",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Elevate your experience, sign up now!",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        20.heightBox,
                        RoundedTextFieldWithTitle(
                          title: "Your Name",
                          controller: nameController,
                          validator: validateName,
                        ),
                        12.heightBox,
                        RoundedTextFieldWithTitle(
                          title: "Mobile No",
                          controller: mobileController,
                          validator: validateMobile,
                        ),
                        12.heightBox,
                        RoundedTextFieldWithTitle(
                          title: "Email Address",
                          controller: emailController,
                          validator: validateEmail,
                        ),
                        20.heightBox,
                        GestureDetector(
                          onTap: _submitForm,
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue[900],
                            ),
                            child: Center(
                              child: "Sign Up".text.size(15).white.make(),
                            ),
                          ),
                        ),
                        SizedBox(height: 18),
                        Row(
                          children: [
                            Expanded(child: Divider(color: Colors.grey)),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: "Or Sign Up with"
                                  .text
                                  .color(Colors.grey)
                                  .make(),
                            ),
                            Expanded(child: Divider(color: Colors.grey)),
                          ],
                        ),
                        SizedBox(height: 16),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RoundedIconButton(
                                iconAsset: "assets/google-logo.png",
                              ),
                              RoundedIconButton(
                                iconAsset: "assets/facebook_logo.png",
                              ),
                              RoundedIconButton(
                                iconAsset: "assets/apple_logo.png",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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

class RoundedTextFieldWithTitle extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final String? Function(String?) validator;

  const RoundedTextFieldWithTitle({
    Key? key,
    required this.title,
    required this.controller,
    required this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: title,
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
      validator: validator,
    );
  }
}

class RoundedIconButton extends StatelessWidget {
  final String iconAsset;

  const RoundedIconButton({Key? key, required this.iconAsset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: Image.asset(iconAsset),
    );
  }
}
