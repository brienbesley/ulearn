import 'package:education_app/constants/color.dart';
import 'package:education_app/constants/size.dart';
import 'package:education_app/models/category.dart';
import 'package:education_app/screens/course_screen.dart';
import 'package:education_app/screens/details_screen.dart';
import 'package:education_app/screens/featuerd_screen.dart';
import 'package:education_app/widgets/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/search_testfield.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Category',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Browse all classes with certain category',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Icon(Icons.search),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search category',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            buildCategoryTile('Category 1', 'assets/icons/laptop.jpg'),
            buildCategoryTile('Category 2', 'assets/icons/accounting.jpg'),
            buildCategoryTile('Category 3', 'assets/icons/design.jpg'),
            buildCategoryTile('Category 4', 'assets/icons/photography.jpg'),
            // Add more category tiles as needed
          ],
        ),
      ),
    );
  }

  Widget buildCategoryTile(String categoryName, String logoPath) {
    return Column(
      children: [
        ListTile(
          leading: Image.asset(
            logoPath,
            width: 40,
            height: 40,
          ),
          title: Text(categoryName),
        ),
        Divider(
          color: Colors.grey,
        ),
      ],
    );
  }
}