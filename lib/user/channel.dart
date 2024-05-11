import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:review_hub/constants/colors.dart';
import 'package:review_hub/CustomWidgets/customText.dart';
import 'package:review_hub/user/channelView.dart';
import 'package:review_hub/user/movieview.dart';

class Channel extends StatefulWidget {
  Channel({Key? key}) : super(key: key);

  @override
  _ChannelState createState() => _ChannelState();
}

class _ChannelState extends State<Channel> {
  Future<List<DocumentSnapshot>> Channel() async {
    try {
      final querySnapshot = await FirebaseFirestore.instance.collection('items').where('category',isEqualTo: 'Channel').get();
      return querySnapshot.docs.toList();
    } catch (error) {
      print('Error fetching Channel: $error');
      throw error;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: maincolor,
        title: Text('Channel'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Channel',
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
                  future: Channel(),
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
                          var channelData = snapshot.data![index].data() as Map<String, dynamic>;
                          return _buildMovieItem(channelData);
                        },
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMovieItem(Map<String, dynamic> channelData) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (ctx) {
          return ChannelView(name:  channelData['name'],image:channelData['image_url'],about:channelData['about']);
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                channelData['image_url'], // Assuming 'image' is the field in Firestore containing image URL
                height: 130,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 5),
            Text(
              channelData['name'], // Assuming 'name' is the field in Firestore containing movie name
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 5),
            RatingBar.builder(
              initialRating: 2, // Assuming 'rating' is the field in Firestore containing rating
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 15,
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                // Do something when rating is updated
              },
            ),
          
          Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (ctx) {
                              return MovieView(name:  channelData['name'],image:channelData['image_url'],about:channelData['about']);
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
