import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:review_hub/CustomWidgets/customText.dart';
import 'package:review_hub/CustomWidgets/customTextField.dart';
import 'package:review_hub/constants/colors.dart';

class RestaurentView extends StatefulWidget {
  const RestaurentView({super.key});

  @override
  State<RestaurentView> createState() => _RestaurentViewState();
}

class _RestaurentViewState extends State<RestaurentView> {
  var comment = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: maincolor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
                        child: Image.asset(
            'assets/images/restaurent.jpeg',
            fit: BoxFit.fill,
                        ),
                        width: double.infinity,
                      ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    AppText(
                        text: 'Hotel',
                        weight: FontWeight.bold,
                        size: 20,
                        textcolor: customBalck),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: SizedBox(
                                width: 400,
                                child: Expanded(
                                    child: Text(
                    'Nestled in the heart of Calicut Town, Paramount Tower is a convenient 5-minute walk from Calicut Railway Station and Calicut Town hall.',                                    style: GoogleFonts.poppins(),
                                ))),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40,),
                    AppText(
                        text: 'Rating and Reviews',
                        weight: FontWeight.bold,
                        size: 20,
                        textcolor: customBalck),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: SizedBox(
                                width: 400,
                                child: Expanded(
                                    child: Text(
                                  'Rating and Reviews are verified and are from people who use the same type of device that you use',
                                  style: GoogleFonts.poppins(),
                                ))),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              AppText(
                                  text: '5.0',
                                  weight: FontWeight.w400,
                                  size: 35,
                                  textcolor: customBalck),
                              RatingBar.builder(
                                initialRating: 5,
                                minRating: 1,
                                ignoreGestures: true,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 18,
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
                          Image.asset('assets/images/rating.png')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 100,
              color: grey,
              child: ListTile(
                
                 leading:  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.png'),
                  ),
                 
                      title:AppText(
                          text: 'Anees',
                          weight: FontWeight.w400,
                          size: 15,
                          textcolor: white),
                    subtitle:   AppText(
                          text: 'Very nice atmosphere.Like it',
                          weight: FontWeight.w400,
                          size: 15,
                          textcolor: white),
                          trailing: Icon(CupertinoIcons.heart,color: white,),
                 
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.png'),
                  ),
                  SizedBox(width: 10),
                  SizedBox(
                    width: 250,
                    child: TextFormField(
                      controller: comment,
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'Please enter Password';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        errorBorder:
                            UnderlineInputBorder(borderSide: BorderSide.none),
                        fillColor: grey,
                        filled: true,
                        hintText: 'Add comment',
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
