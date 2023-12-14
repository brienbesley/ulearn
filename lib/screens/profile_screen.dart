import 'package:education_app/constants/color.dart';
import 'package:education_app/constants/size.dart';
import 'package:education_app/models/category.dart';
import 'package:education_app/screens/course_screen.dart';
import 'package:education_app/screens/categories_screen.dart';
import 'package:education_app/screens/details_screen.dart';
import 'package:education_app/widgets/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/search_testfield.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.blue, // Customize the color as needed
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: Text(
                  'Profile',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/icons/react.jpg'),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Brien',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'ULearn Student',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildProfileStat('Enrolled', '80'),
                  buildProfileStat('Finished', '60'),
                  buildProfileStat('Ongoing', '20'),
                ],
              ),
            ),
            Divider(),
            buildProfileBadge('Finished Courses'),
            Divider(),
            buildImageGrid(),
          ],
        ),
      ),
    );
  }

  Widget buildProfileStat(String label, String value) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

Widget buildImageGrid() {
  return GridView.builder(
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      crossAxisSpacing: 2.0,
      mainAxisSpacing: 2.0,
    ),
    itemCount: 9, // Number of images
    itemBuilder: (context, index) {
      return Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey[300]!, // Light grey color
          ),
        ),
        child: Image.asset(
          'assets/icons/flutter.jpg',
          fit: BoxFit.cover,
        ),
      );
    },
  );
}

  Widget buildProfileBadge(String label) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.green, // Customize the color as needed
      ),
      child: Center(
        child: Text(
          '$label',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}