import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:review_hub_admin/constants/color.dart';
import 'package:review_hub_admin/customWidgets/customText.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _movieNameController = TextEditingController();
  final TextEditingController _aboutController = TextEditingController();
  
  // Category Dropdown management
  String? _selectedCategory;
  final List<String> _categories = ['Movie', 'Channel', 'Service', 'Products','Hotel'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: maincolor,
        title:  AppText(
          size: 20,
          text: 'Review Hub',
          textcolor: Colors.white,
          weight: FontWeight.w500,
        ),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppText(
                text: 'Add Review Product',
                weight: FontWeight.bold,
                size: 40,
                textcolor: maincolor),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: 350,
                      height: 350,
                      child: Image.asset(
                        'assets/images/prem.jpeg',
                        fit: BoxFit.cover,
                      )),
                    const SizedBox(height: 10),
                    Container(
                      height: 40,width: 120,
                     color: maincolor,
                      // style: ElevatedButton.styleFrom(primary: maincolor),
                      child: Center(child: const Text('Add Image', style: TextStyle(color: Colors.white))),
                    )
                  ],
                ),
                const SizedBox(width: 25),
                Container(
                  width: 350,
                  child: Column(
                    children: [
                      DropdownButtonFormField<String>(
                        value: _selectedCategory,
                        decoration: InputDecoration(
                          fillColor: maincolor,
                          filled: true,
                          hintText: 'Select category',
                          hintStyle: const TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Colors.white),
                          ),
                        ),
                        dropdownColor: maincolor,
                        items: _categories.map((String category) {
                          return DropdownMenuItem(
                            value: category,
                            child: Text(category, style: const TextStyle(color: Colors.white)),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedCategory = value;
                          });
                        },
                      ),
                      const SizedBox(height: 20),
                      buildTextFormField(_movieNameController, 'Movie Name'),
                      const SizedBox(height: 20),
                      buildTextFormField(_aboutController, 'About', maxLines: 5),
                      const SizedBox(height: 40),
                      Container(
                        // style: ElevatedButton.styleFrom(primary: maincolor, fixedSize: const Size(300, 40)),
                       height: 40,width: 300,color: maincolor,
                        child:  Center(child: AppText(text: 'Submit', weight: FontWeight.w500, size: 15, textcolor: Colors.white)),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildTextFormField(TextEditingController controller, String hintText, {int maxLines = 1}) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Please enter $hintText';
        }
        return null;
      },
      decoration: InputDecoration(
        fillColor: maincolor,
        filled: true,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white),
        contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
