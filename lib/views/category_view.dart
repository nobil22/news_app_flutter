import 'package:flutter/material.dart';

import '../widgets/news _list_view.dart';


class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});

  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListView
          (
            category: category, articles: [],
          ),
        ],
      ),
    );
  }
}
