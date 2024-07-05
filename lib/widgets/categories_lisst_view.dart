import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../models/category_model.dart';
import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({Key? key}) : super(key: key);

  final List<CategoryModel> categories = const [
    CategoryModel(
      categoryName: 'General',
      image: 'assets/general.avif',
    ),
    CategoryModel(
      categoryName: 'Business',
      image: 'assets/business.avif',
    ),
    CategoryModel(
      categoryName: 'Sports',
      image: 'assets/sports.avif',
    ),
    CategoryModel(
      categoryName: 'Science',
      image: 'assets/science.avif',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}
