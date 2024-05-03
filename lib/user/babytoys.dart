import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:review_hub/CustomWidgets/customButton.dart';
import 'package:review_hub/CustomWidgets/customText.dart';
import 'package:review_hub/constants/colors.dart';
import 'package:review_hub/user/movieview.dart';
import 'package:review_hub/user/toysView.dart';

class Toys extends StatefulWidget {
  Toys({Key? key}) : super(key: key);

  @override
  _ToysState createState() => _ToysState();
}

class _ToysState extends State<Toys> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: maincolor,
      ),
      body: Center(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Toys',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
              onChanged: (value) {
                // Implement your search functionality here
              },
            ),
          ),
          Expanded(
            child: GridView.extent(
              primary: false,
              padding: const EdgeInsets.all(0),
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
              maxCrossAxisExtent: 300.0,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: white, // Background color of Container
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey
                            .withOpacity(0.5), // Shadow color with opacity
                        spreadRadius: 2, // Spread radius
                        blurRadius: 7, // Blur radius
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 90,
                        child: Image.asset('assets/images/toys.jpeg')),
                      Padding(
                        padding: const EdgeInsets.only(top: 5,left: 5,right: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppText(
                                text: 'Doll',
                                weight: FontWeight.w500,
                                size: 13,
                                textcolor: customBalck),
                            RatingBar.builder(
                              initialRating: 5,
                              minRating: 1,
                              ignoreGestures: true,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 12,
                              unratedColor: Colors.yellow[90],
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 1),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                (rating);
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (ctx) {
                              return ToysView();
                            }));
                          },
                          child: Container(
                            color: maincolor,
                            height: 35,
                            width: 90,
                            child: Center(
                              child: Text(
                                'See More',
                                style: TextStyle(color: white),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: white, // Background color of Container
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey
                            .withOpacity(0.5), // Shadow color with opacity
                        spreadRadius: 2, // Spread radius
                        blurRadius: 7, // Blur radius
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
 SizedBox(
                        height: 90,
                        child: Image.asset('assets/images/toys.jpeg')),                      Padding(
                        padding: const EdgeInsets.only(top: 5,left: 5,right: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppText(
                                text: 'Toys',
                                weight: FontWeight.w500,
                                size: 13,
                                textcolor: customBalck),
                            RatingBar.builder(
                              initialRating: 5,
                              minRating: 1,
                              ignoreGestures: true,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 12,
                              unratedColor: Colors.yellow[90],
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 1),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                (rating);
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: InkWell(
                          child: Container(
                            color: maincolor,
                            height: 35,
                            width: 90,
                            child: Center(
                              child: Text(
                                'See More',
                                style: TextStyle(color: white),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: white, // Background color of Container
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey
                            .withOpacity(0.5), // Shadow color with opacity
                        spreadRadius: 2, // Spread radius
                        blurRadius: 7, // Blur radius
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
 SizedBox(
                        height: 90,
                        child: Image.asset('assets/images/toys.jpeg')),                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppText(
                                text: 'Toys',
                                weight: FontWeight.w500,
                                size: 13,
                                textcolor: customBalck),
                            RatingBar.builder(
                              initialRating: 5,
                              minRating: 1,
                              ignoreGestures: true,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 12,
                              unratedColor: Colors.yellow[90],
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 1),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                (rating);
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: InkWell(
                          child: Container(
                            color: maincolor,
                            height: 35,
                            width: 90,
                            child: Center(
                              child: Text(
                                'See More',
                                style: TextStyle(color: white),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: white, // Background color of Container
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey
                            .withOpacity(0.5), // Shadow color with opacity
                        spreadRadius: 2, // Spread radius
                        blurRadius: 7, // Blur radius
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
 SizedBox(
                        height: 90,
                        child: Image.asset('assets/images/toys.jpeg')),                      Padding(
                        padding: const EdgeInsets.only(top: 5,left: 5,right: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppText(
                                text: 'Toys',
                                weight: FontWeight.w500,
                                size: 13,
                                textcolor: customBalck),
                            RatingBar.builder(
                              initialRating: 5,
                              minRating: 1,
                              ignoreGestures: true,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 12,
                              unratedColor: Colors.yellow[90],
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 1),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                (rating);
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: InkWell(
                          child: Container(
                            color: maincolor,
                            height: 35,
                            width: 90,
                            child: Center(
                              child: Text(
                                'See More',
                                style: TextStyle(color: white),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: white, // Background color of Container
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey
                            .withOpacity(0.5), // Shadow color with opacity
                        spreadRadius: 2, // Spread radius
                        blurRadius: 7, // Blur radius
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
 SizedBox(
                        height: 90,
                        child: Image.asset('assets/images/toys.jpeg')),                      Padding(
                        padding: const EdgeInsets.only(top: 5,left: 5,right: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppText(
                                text: 'Toys',
                                weight: FontWeight.w500,
                                size: 13,
                                textcolor: customBalck),
                            RatingBar.builder(
                              initialRating: 5,
                              minRating: 1,
                              ignoreGestures: true,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 12,
                              unratedColor: Colors.yellow[90],
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 1),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                (rating);
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: InkWell(
                          child: Container(
                            color: maincolor,
                            height: 35,
                            width: 90,
                            child: Center(
                              child: Text(
                                'See More',
                                style: TextStyle(color: white),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
