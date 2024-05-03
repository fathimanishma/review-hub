import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:review_hub/CustomWidgets/customText.dart';
import 'package:review_hub/constants/colors.dart';
import 'package:review_hub/user/babytoys.dart';
import 'package:review_hub/user/channel.dart';
import 'package:review_hub/user/movies.dart';
import 'package:review_hub/user/restaurent.dart';
import 'package:review_hub/user/services.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            //-------search bar-------
            SizedBox(
                height: 50,
                child: TextFormField(
                  controller: search,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      fillColor: white,
                      filled: true,
                      hintText: "Search",
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: customBalck)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: white)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: white,
                          ))),
                )),
            SizedBox(
              height: 10,
            ),

            //-------------Movie set--------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: AppText(
                      text: 'Movies',
                      weight: FontWeight.w400,
                      size: 15,
                      textcolor: customBalck),
                ),
                RatingBar.builder(
                  initialRating: 5,
                  minRating: 1,
                  ignoreGestures: true,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 18,
                  unratedColor: Colors.yellow[100],
                  itemPadding: const EdgeInsets.symmetric(horizontal: 1),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {},
                ),
              ],
            ),
            SizedBox(height: 15),
            SizedBox(
              height: 120, // set a fixed height for the horizontal ListView
              child: InkWell(
                 onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return Movies();
                          }));
                        }, 
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Container(
                              height: 80,
                              width: 160,
                              child: Image.asset('assets/images/premlu.jpeg',
                                  fit: BoxFit.cover),
                            ),
                          ),
                          AppText(
                              text: 'Premalu',
                              weight: FontWeight.normal,
                              size: 12,
                              textcolor: customBalck)
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
//-------------End Movie set--------------

            //-------------hotel set--------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: AppText(
                      text: 'Hotels',
                      weight: FontWeight.w400,
                      size: 15,
                      textcolor: customBalck),
                ),
                RatingBar.builder(
                  initialRating: 5,
                  minRating: 1,
                  ignoreGestures: true,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 18,
                  unratedColor: Colors.yellow[100],
                  itemPadding: const EdgeInsets.symmetric(horizontal: 1),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {},
                ),
              ],
            ),
            SizedBox(height: 15),
            SizedBox(
              height: 120, // set a fixed height for the horizontal ListView
              child: InkWell(
                 onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return Restaurents();
                          }));
                        }, 
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Container(
                              height: 80,
                              width: 160,
                              child: Image.asset('assets/images/restaurent.jpeg',
                                  fit: BoxFit.cover),
                            ),
                          ),
                          AppText(
                              text: 'Hotel',
                              weight: FontWeight.normal,
                              size: 12,
                              textcolor: customBalck)
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
//-------------End hotel set--------------
            //-------------toys set--------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: AppText(
                      text: 'Toys',
                      weight: FontWeight.w400,
                      size: 15,
                      textcolor: customBalck),
                ),
                RatingBar.builder(
                  initialRating: 5,
                  minRating: 1,
                  ignoreGestures: true,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 18,
                  unratedColor: Colors.yellow[100],
                  itemPadding: const EdgeInsets.symmetric(horizontal: 1),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {},
                ),
              ],
            ),
            SizedBox(height: 15),
            SizedBox(
              height: 120, // set a fixed height for the horizontal ListView
              child: InkWell(
                 onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return Toys();
                          }));
                        }, 
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Container(
                              height: 80,
                              width: 160,
                              child: Image.asset('assets/images/toys.jpeg',
                                  fit: BoxFit.cover),
                            ),
                          ),
                          AppText(
                              text: 'Toy',
                              weight: FontWeight.normal,
                              size: 12,
                              textcolor: customBalck)
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
//-------------End toys set--------------
            //-------------Service set--------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: AppText(
                      text: 'Service',
                      weight: FontWeight.w400,
                      size: 15,
                      textcolor: customBalck),
                ),
                RatingBar.builder(
                  initialRating: 5,
                  minRating: 1,
                  ignoreGestures: true,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 18,
                  unratedColor: Colors.yellow[100],
                  itemPadding: const EdgeInsets.symmetric(horizontal: 1),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {},
                ),
              ],
            ),
            SizedBox(height: 15),
            SizedBox(
              height: 120, // set a fixed height for the horizontal ListView
              child: InkWell(
                 onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return Services();
                          }));
                        }, 
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Container(
                              height: 80,
                              width: 160,
                              child: Image.asset('assets/images/service.jpeg',
                                  fit: BoxFit.cover),
                            ),
                          ),
                          AppText(
                              text: 'Service',
                              weight: FontWeight.normal,
                              size: 12,
                              textcolor: customBalck)
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
//-------------End Service set--------------
            //-------------Channel set--------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: AppText(
                      text: 'Channel',
                      weight: FontWeight.w400,
                      size: 15,
                      textcolor: customBalck),
                ),
                RatingBar.builder(
                  initialRating: 5,
                  minRating: 1,
                  ignoreGestures: true,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 18,
                  unratedColor: Colors.yellow[100],
                  itemPadding: const EdgeInsets.symmetric(horizontal: 1),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {},
                ),
              ],
            ),
            SizedBox(height: 15),
            SizedBox(
              height: 120, // set a fixed height for the horizontal ListView
              child: InkWell(
                 onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return Channel();
                          }));
                        }, 
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Container(
                              height: 80,
                              width: 160,
                              child: Image.asset('assets/images/asianet.jpeg',
                                  fit: BoxFit.cover),
                            ),
                          ),
                          AppText(
                              text: 'Asianet',
                              weight: FontWeight.normal,
                              size: 12,
                              textcolor: customBalck)
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
//-------------End Channel set--------------
          ],
        ),
      ),
    );
  }
}
