import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:review_hub_admin/add.dart';
import 'package:review_hub_admin/channels.dart';
import 'package:review_hub_admin/constants/color.dart';
import 'package:review_hub_admin/customWidgets/customText.dart';
import 'package:review_hub_admin/movies.dart';
import 'package:review_hub_admin/restaurents.dart';
import 'package:review_hub_admin/services.dart';

class BabyProducts extends StatefulWidget {
  const BabyProducts({super.key});

  @override
  State<BabyProducts> createState() => _BabyProductsState();
}

class _BabyProductsState extends State<BabyProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: maincolor,
      ),
      body: Column(
        children: [
          
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               
                AppText(text: 'BabyProducts', weight: FontWeight.w500, size: 18, textcolor: customBalck),
                 RatingBar.builder(
              initialRating: 5,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 20,
              unratedColor: customBalck,
              itemPadding: const EdgeInsets.symmetric(horizontal: 1),
              itemBuilder: (context, _) => const Icon(
                Icons.star_border,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                //print(rating);
                setState(() {
                  var ratvalue = rating;
                });
                // print(ratvalue);
              },
            ),
              ],
            ),
          ),
        
          Expanded(
            child: ResponsiveGridList(
              desiredItemWidth: 300,
              minSpacing: 15,
              children: List.generate(20, (index)=> index+1).map((i) {
                return Container(
                  height: 250,
                  
                  alignment: Alignment(0, 0),
               
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset('assets/images/toy.jpg',fit: BoxFit.cover,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('Remove'),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          AppText(text: 'Toy', weight: FontWeight.w500, size: 15, textcolor: customBalck),
                        ],
                      )
                    ],
                  ),
                );
              }).toList()
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