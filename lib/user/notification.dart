import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:review_hub/CustomWidgets/customText.dart';
import 'package:review_hub/constants/colors.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Container(color: maincolor,width: double.infinity,
          child: Center(child: AppText(text: 'Notifications', weight: FontWeight.w400, size: 20, textcolor: white)),)),
          Expanded(
            flex: 4,
            child: Container(
              child: ListView.builder(
                itemCount: 13,
                itemBuilder: (context, index) {
                
                return ListTile(
                  leading: CircleAvatar(backgroundImage: AssetImage('assets/images/profile.png'),),
                  title: AppText(size: 15,text: 'Message title',textcolor: customBalck,weight: FontWeight.w500,),
                                   subtitle: AppText(size: 15,text: 'Message content...',textcolor: customBalck,weight: FontWeight.w400,),
trailing: Text('04/05/2024'),
                );
              },),
            ))
        ],
      ),
    );
  }
}