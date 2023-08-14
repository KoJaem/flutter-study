import 'package:flutter/material.dart';
import 'package:toonflix/models/webtoon_model.dart';
import 'package:toonflix/services/api_service.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.green, // title 텍스트 컬러
        backgroundColor: Colors.white,
        elevation: 2, // title box 그림자 처리
        title: const Text(
          "Today's toons",
        ),
      ),
      body: FutureBuilder(
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const Text("There is data!");
          }
          return const Text("Loading...");
        },
        future: webtoons,
      ),
    );
  }
}
