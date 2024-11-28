import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_appp/services/news_service.dart';
import 'package:news_appp/views/home_view.dart';

void main() {
  NewService(Dio()).getGeneralNews();
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp( {super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}