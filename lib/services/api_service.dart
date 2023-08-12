import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:toonflix/models/webtoon_model.dart';

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonsInfo = [];
    final url = Uri.parse('$baseUrl/$today');
    try {
      final response = await http.get(url);
      final List<dynamic> webtoons = jsonDecode(response.body);

      for (var webtoon in webtoons) {
        final webtoonInfo = WebtoonModel.fromJson(webtoon);
        webtoonsInfo.add(webtoonInfo);
      }
      return webtoonsInfo;
    } catch (error) {
      throw Error();
    }

    // if (response.statusCode == 200) {
    //   print(response);
    //   return;
    // }
    // throw Error();
  }
}
