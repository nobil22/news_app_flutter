import 'package:flutter/material.dart';
import 'package:news_appp/models/catgory_model.dart';
import 'package:news_appp/widgets/catrgory_card.dart';

class CatgroyList extends StatelessWidget {
  const CatgroyList({
    super.key,
  });
  final List<CategoryModel> catgorys = const [
    CategoryModel(
      image: 'lib/assets/entertaiment.avif',
      categoryName: 'Entertainment',
    ),
    CategoryModel(
      image: 'lib/assets/health.avif',
      categoryName: 'Health',
    ),
    CategoryModel(
      image: 'lib/assets/science.avif',
      categoryName: 'Science',
    ),
    CategoryModel(
      image: 'lib/assets/technology.jpeg',
      categoryName: 'Technology',
    ),
    CategoryModel(
      image: 'lib/assets/sports.avif',
      categoryName: 'Sports',
    ),
    CategoryModel(
      image: 'lib/assets/general.avif',
      categoryName: 'General',
    ),
  ];
   @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: catgorys.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: catgorys[index],
            );
          }),
    );
  }
}
