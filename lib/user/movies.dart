import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:review_hub/CustomWidgets/customButton.dart';
import 'package:review_hub/CustomWidgets/customText.dart';
import 'package:review_hub/constants/colors.dart';
import 'package:review_hub/user/movieview.dart';

class Movies extends StatefulWidget {
  Movies({Key? key}) : super(key: key);

  @override
  _MoviesState createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
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
            child: SizedBox(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search Movies',
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
                      Image.asset('assets/images/premlu.jpeg'),
                      Padding(
                        padding: const EdgeInsets.only(top: 5,left: 5,right: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppText(
                                text: 'Premalu',
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
                              unratedColor: Colors.yellow[100],
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
                              return MovieView();
                            }));
                          },
                          child: Container(
                            color: maincolor,
                            height: 35,
                            width: 100,
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
                      Image.asset('assets/images/premlu.jpeg'),
                      Padding(
                        padding: const EdgeInsets.only(top: 5,left: 5,right: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppText(
                                text: 'Premalu',
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
                              unratedColor: Colors.yellow[100],
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
                            width: 100,
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
                      Image.asset('assets/images/premlu.jpeg'),
                      Padding(
                        padding: const EdgeInsets.only(top: 5,left: 5,right: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppText(
                                text: 'Premalu',
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
                              unratedColor: Colors.yellow[100],
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
                            width: 100,
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
                      Image.asset('assets/images/premlu.jpeg'),
                      Padding(
                        padding: const EdgeInsets.only(top: 5,left: 5,right: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppText(
                                text: 'Premalu',
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
                              unratedColor: Colors.yellow[100],
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
                            width: 100,
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
                      Image.asset('assets/images/premlu.jpeg'),
                      Padding(
                        padding: const EdgeInsets.only(top: 5,left: 5,right: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppText(
                                text: 'Premalu',
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
                              unratedColor: Colors.yellow[100],
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
                            width: 100,
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
