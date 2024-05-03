import 'package:flutter/material.dart';
import 'package:review_hub/CustomWidgets/customButton.dart';
import 'package:review_hub/CustomWidgets/customText.dart';
import 'package:review_hub/CustomWidgets/customTextField.dart';
import 'package:review_hub/constants/colors.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.white,
                child: Center(
                  child: AppText(
                      text: 'REVIEW HUB',
                      weight: FontWeight.w600,
                      size: 20,
                      textcolor: maincolor),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Color.fromARGB(255, 8, 27, 133),
                ),
                child: Column(
                  children: [
                    Center(
                        child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: AppText(
                          text: 'LOGIN',
                          weight: FontWeight.w600,
                          size: 20,
                          textcolor: white),
                    )),
                     Padding(
                      padding:
                          const EdgeInsets.only(top: 28, right: 28, left: 28),
                      child: CustomTextField(
                          hint: 'Name',
                          controller: name,
                          validator: (value) {
                            if (value?.isEmpty ?? true) {
                              return 'Please enter Name';
                            }
                            return null;
                          }),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 28, right: 28, left: 28),
                      child: CustomTextField(
                          hint: 'Email Address',
                          controller: email,
                          validator: (value) {
                            if (value?.isEmpty ?? true) {
                              return 'Please enter Email';
                            }
                            return null;
                          }),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 28, right: 28, left: 28),
                      child: CustomTextField(
                          hint: 'Email Password',
                          controller: password,
                          validator: (value) {
                            if (value?.isEmpty ?? true) {
                              return 'Please enter Password';
                            }
                            return null;
                          }),
                    ),
                    Center(
                        child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        children: [
                          SizedBox(width: 15,),
                          AppText(
                              text: 'Already have account?',
                              weight: FontWeight.w400,
                              size: 14,
                              textcolor: white),
                               AppText(
                              text: 'Login',
                              weight: FontWeight.w400,
                              size: 14,
                              textcolor: red),
                        ],
                      ),
                    )),
                  
                    Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: CustomButton(
                          btnname: 'Register',
                          btntheam: white,
                          textcolor: maincolor,
                          click: () {}),
                    ),
                  
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
