import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';

import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(
      image: 'assets/technology.jpeg',
      categoryName: 'Business',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      categoryName: 'Entertainment',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      categoryName: 'Health',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      categoryName: 'Science',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      categoryName: 'Technology',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      categoryName: 'Sports',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      categoryName: 'General',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return  CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
