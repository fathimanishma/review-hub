import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:review_hub/CustomWidgets/customText.dart';
import 'package:review_hub/constants/colors.dart';
import 'package:review_hub/user/resturentview.dart';

class Restaurents extends StatefulWidget {
  Restaurents({Key? key}) : super(key: key);

  @override
  _RestaurentsState createState() => _RestaurentsState();
}

class _RestaurentsState extends State<Restaurents> {
  Future<List<DocumentSnapshot>> restaurants() async {
    try {
      final querySnapshot = await FirebaseFirestore.instance.collection('items').where('category',isEqualTo: 'Hotel').get();
      return querySnapshot.docs.toList();
    } catch (error) {
      print('Error fetching restaurants: $error');
      throw error;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: maincolor,
        title: Text('Restaurants'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search Restaurants',
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
              child: FutureBuilder(
                future: restaurants(),
                builder: (context, AsyncSnapshot<List<DocumentSnapshot>> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else {
                    return GridView.builder(
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 300,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 0.7,
                      ),
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        var restaurantData = snapshot.data![index].data() as Map<String, dynamic>;
                        return _buildRestaurantItem(restaurantData);
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRestaurantItem(Map<String, dynamic> restaurantData) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (ctx) {
          return RestaurentView(name:  restaurantData['name'],image:restaurantData['image_url'],about:restaurantData['about'] );
        }));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 90,
              child: Image.network(restaurantData['image_url']), // Assuming this is a placeholder image
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    text: restaurantData['name'], // Assuming 'name' is the field in Firestore containing restaurant name
                    weight: FontWeight.w500,
                    size: 13,
                    textcolor: customBalck,
                  ),
                  RatingBar.builder(
                    initialRating: 5, // Assuming 'rating' is the field in Firestore containing rating
                    minRating: 1,
                    ignoreGestures: true,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 12,
                    unratedColor: Colors.yellow[100],
                    itemPadding: const EdgeInsets.symmetric(horizontal: 1),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      // Do something when rating is updated
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (ctx) {
          return RestaurentView(name:  restaurantData['name'],image:restaurantData['image_url'],about:restaurantData['about'] );
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
    );
  }
}
