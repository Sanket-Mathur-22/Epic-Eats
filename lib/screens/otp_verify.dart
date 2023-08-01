import 'package:flutter/material.dart';
import 'package:food_app/screens/aboutPage.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpVerify extends StatefulWidget {
  const OtpVerify({super.key});

  @override
  _OtpVerifyState createState() => _OtpVerifyState();
}

class _OtpVerifyState extends State<OtpVerify> {
  bool _verifying = false;

  void _onVerifyButtonPressed() {
    setState(() {
      _verifying = true;
    });

    // Simulate verification process with a delay
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _verifying = false;
      });

      // Redirect to the next page after verification is complete
      Get.to(AboutPage());
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
                        "Verify Mobile No.",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      8.heightBox,
                      Text(
                        "Enter OTP sent to +91XXXXXXXX56",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      15.heightBox,
                      OtpTextField(
                        borderWidth: 2,
                        fieldWidth: 40,
                        numberOfFields: 5,
                        borderColor: Vx.black,
                        showFieldAsBox: true,
                        onCodeChanged: (String code) {},
                        onSubmit: (String verificationCode) {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("Verification Code"),
                                content:
                                    Text('Code entered is $verificationCode'),
                              );
                            },
                          );
                        }, // end onSubmit
                      ),
                      30.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          "Didn't receive an OTP?".text.size(10).make(),
                          5.widthBox,
                          "Resend OTP".text.green700.underline.size(10).make(),
                        ],
                      ),
                      30.heightBox,
                      GestureDetector(
                        onTap: _verifying ? null : _onVerifyButtonPressed,
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue[900],
                          ),
                          child: Center(
                            child: _verifying
                                ? "Verifying...".text.size(15).white.make()
                                : "Verify".text.size(15).white.make(),
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
