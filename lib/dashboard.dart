import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:review_hub_admin/add.dart';
import 'package:review_hub_admin/babyproducts.dart';
import 'package:review_hub_admin/channels.dart';
import 'package:review_hub_admin/constants/color.dart'; // Ensure this file defines all colors properly
import 'package:review_hub_admin/customWidgets/customText.dart';
import 'package:review_hub_admin/movies.dart';
import 'package:review_hub_admin/restaurents.dart';
import 'package:review_hub_admin/services.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  void _showNotificationDialog() {
  final overlay = Overlay.of(context)!;
  late OverlayEntry overlayEntry;

  overlayEntry = OverlayEntry(
    builder: (context) => Positioned(
      top: 50, // Distance from the top
      right: 10, // Distance from the right
      child: Material(
        elevation: 4.0,
        child: Container(
          padding: EdgeInsets.all(10),
          color: Colors.white,
          width: 300,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Text('Notification 1'),
                subtitle: Text('Your order has been shipped.'),
                trailing: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () => overlayEntry.remove(),
                ),
              ),
              ListTile(
                title: Text('Notification 2'),
                subtitle: Text('Your review has been approved.'),
              ),
               ListTile(
                title: Text('Notification 1'),
                subtitle: Text('Your order has been shipped.'),
               
              ),
              ListTile(
                title: Text('Notification 2'),
                subtitle: Text('Your review has been approved.'),
              ),
             
              
               ListTile(
                title: Text('Notification 1'),
                subtitle: Text('Your order has been shipped.'),
               
              ),
              ListTile(
                title: Text('Notification 2'),
                subtitle: Text('Your review has been approved.'),
              ),
               ListTile(
                title: Text('Notification 1'),
                subtitle: Text('Your order has been shipped.'),
               
              ),
            
              ListTile(
                title: Text('Notification 2'),
                subtitle: Text('Your review has been approved.'),
              ),
              TextButton(
                child: Text('Dismiss'),
                onPressed: () {
                  overlayEntry.remove();
                },
              ),
            ],
          ),
        ),
      ),
    ),
  );

  overlay.insert(overlayEntry);
}

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: maincolor, // Ensure this is the correct variable name
        title: AppText(
          size: 20,
          text: 'REVIEW HUB',
          weight: FontWeight.normal,
          textcolor: white, // Ensure color is correctly referenced
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {
              _showNotificationDialog();
              // Handle notifications tap if needed
            },
          ),
          const SizedBox(width: 20),
          Builder(
            // Builder used to provide a suitable context
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                Scaffold.of(context)
                    .openEndDrawer(); // Opens endDrawer with correct context
              },
            ),
          ),
        ],
      ),
      backgroundColor: grey, // Ensure this color is defined in your constants
      body: Stack(
        children: [
          const Positioned.fill(
            child: Image(
              image: AssetImage('assets/images/bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Text(
              'A great mobile app is like a work of art; it captivates and inspires.',
              style: GoogleFonts.poppins(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: maincolor, // Ensure this is the correct variable name
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: ListTile(
                title: AppText(
                  size: 25,
                  text: 'Home',
                  textcolor: maincolor,
                  weight: FontWeight.w600,
                ),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: ListTile(
                title: AppText(
                  size: 25,
                  text: 'Movies',
                  textcolor: maincolor,
                  weight: FontWeight.w600,
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Movies();
                    },
                  )); // Close the drawer
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: ListTile(
                title: AppText(
                  size: 25,
                  text: 'Restaurent',
                  textcolor: maincolor,
                  weight: FontWeight.w600,
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Restaurents();
                    },
                  )); // Close the drawer
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: ListTile(
                title: AppText(
                  size: 25,
                  text: 'Channels',
                  textcolor: maincolor,
                  weight: FontWeight.w600,
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Channel();
                    },
                  ));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: ListTile(
                title: AppText(
                  size: 25,
                  text: 'Services',
                  textcolor: maincolor,
                  weight: FontWeight.w600,
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Services();
                    },
                  ));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: ListTile(
                title: AppText(
                  size: 25,
                  text: 'Baby Products',
                  textcolor: maincolor,
                  weight: FontWeight.w600,
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return BabyProducts();
                    },
                  ));
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: ListTile(
                title: AppText(
                  size: 25,
                  text: 'Add',
                  textcolor: maincolor,
                  weight: FontWeight.w600,
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Add();
                    },
                  ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  
}
