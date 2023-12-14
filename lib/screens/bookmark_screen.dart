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



class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bookmark',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Access bookmarked and recent courses easily.',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16),
            buildSwipeableCard('Bookmarked Courses', [
              "Learn Flutter - Beginner",
              "Learn React - Beginner",
              "Learn Node.js - Beginner",
              "Learn Flutter - Advanced",
              "Learn React - Advanced",
              "Learn Node.js - Advanced",
            ]),
            const SizedBox(height: 16),
            buildSwipeableCard('Recent Courses', [
              "Recent Course 1",
              "Recent Course 2",
              "Recent Course 3",
              "Recent Course 4",
              "Recent Course 5",
            ]),
          ],
        ),
      ),
    );
  }

  Widget buildSwipeableCard(String sectionTitle, List<String> courses) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          sectionTitle,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 200,
          child: PageView.builder(
            itemCount: courses.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 5,
                child: Column(
                  children: [
                    Image.asset(
                      'assets/icons/flutter.jpg', // Replace with actual image path
                      width: double.infinity,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        courses[index],
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}