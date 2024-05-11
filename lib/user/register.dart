import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:review_hub/CustomWidgets/customButton.dart';
import 'package:review_hub/CustomWidgets/customText.dart';
import 'package:review_hub/CustomWidgets/customTextField.dart';
import 'package:review_hub/constants/colors.dart';
import 'package:review_hub/user/login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: maincolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
          
            children: [
              Container(
                height: 250,
                color: Colors.white,
                child: Center(
                  child: AppText(
                      text: 'REVIEW HUB',
                      weight: FontWeight.w600,
                      size: 20,
                      textcolor: maincolor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Color.fromARGB(255, 8, 27, 133),
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(28.0),
                          child: AppText(
                              text: 'REGISTER',
                              weight: FontWeight.w600,
                              size: 20,
                              textcolor: white),
                        ),
                        _buildTextField('Name', name),
                        _buildTextField('Email Address', email),
                        _buildTextField('Password', password),
                        _loginPrompt(context),
                        Padding(
                          padding: const EdgeInsets.all(28.0),
                          child: CustomButton(
                              btnname: 'Register',
                              btntheam: white,
                              textcolor: maincolor,
                              click: _onRegisterClick),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String hint, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 28),
      child: CustomTextField(
        hint: hint,
        controller: controller,
        validator: (value) => value?.isEmpty ?? true ? 'Please enter $hint' : null,
      ),
    );
  }

  Widget _loginPrompt(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppText(
            text: 'Already have an account? ',
            weight: FontWeight.w400,
            size: 14,
            textcolor: white),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/login'),
            child: AppText(
              text: 'Login',
              weight: FontWeight.w400,
              size: 14,
              textcolor: red),
          ),
        ],
      ),
    );
  }

  Future<void> _onRegisterClick() async {
    if (_formKey.currentState?.validate() ?? false) {
      print('added');
       await FirebaseFirestore.instance.collection('users').add({
          'name': name.text,
          'email': email.text,
          'password': password.text,       
          'status':'0'

        }).then((value) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Registration successfull...')));
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return HomeScreen();
          }));
        });
    }
  }
}
