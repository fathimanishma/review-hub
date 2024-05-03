import 'package:flutter/material.dart';
import 'package:review_hub/CustomWidgets/customButton.dart';
import 'package:review_hub/CustomWidgets/customText.dart';
import 'package:review_hub/CustomWidgets/customTextField.dart';
import 'package:review_hub/constants/colors.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  var name = TextEditingController();
    var email = TextEditingController();

  var mobile = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: maincolor,
        title: AppText(
            text: 'Edit Profile',
            weight: FontWeight.w500,
            size: 20,
            textcolor: white),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile.png'),
            radius: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28,right: 28,top: 28),
            child: TextFormField(
              controller: name,
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Please enter Password';
                }
                return null;
              },
            
              // readOnly: readonly,
              decoration: InputDecoration(
                errorBorder: UnderlineInputBorder(borderSide: BorderSide.none),
                fillColor: maincolor,
                filled: true,
                hintText: 'JOHN PETER',
                hintStyle: TextStyle(color: white),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: white),
                  borderRadius: BorderRadius.circular(8),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: white),
                  borderRadius: BorderRadius.circular(8),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: white),
                ),
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(left: 28,right: 28,top: 10),
            child: TextFormField(
              controller: email,
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Please enter Password';
                }
                return null;
              },
            
              // readOnly: readonly,
              decoration: InputDecoration(
                errorBorder: UnderlineInputBorder(borderSide: BorderSide.none),
                fillColor: maincolor,
                filled: true,
                hintText: 'hohn@gmail.com',
                  hintStyle: TextStyle(color: white),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: white),
                  borderRadius: BorderRadius.circular(8),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: white),
                  borderRadius: BorderRadius.circular(8),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: white),
                ),
              ),
            ),
          ),
          
           Padding(
            padding: const EdgeInsets.only(left: 28,right: 28,top: 28),
            child: TextFormField(
              controller: mobile,
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Please enter Password';
                }
                return null;
              },
            
              // readOnly: readonly,
              decoration: InputDecoration(
                errorBorder: UnderlineInputBorder(borderSide: BorderSide.none),
                fillColor: maincolor,
                filled: true,
                hintText: '+912345667788',
                  hintStyle: TextStyle(color: white),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: white),
                  borderRadius: BorderRadius.circular(8),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: white),
                  borderRadius: BorderRadius.circular(8),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: white),
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: CustomButton(btnname: 'Save', btntheam: maincolor, textcolor: white, click: (){}),
          )
        ],
      ),
    );
  }
}
