import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:toonflix/models/webtoon_detail_model.dart';
import 'package:toonflix/models/webtoon_episode_model.dart';
import 'package:toonflix/models/webtoon_model.dart';

class ApiService {
  static const String baseUrl =
      "https://webtoon-crawler.nomadcoders.workers.dev";
  static const String today = "today";

  static Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonsInstances = [];
    final url = Uri.parse('$baseUrl/$today');
    try {
      final response = await http.get(url);
      final List<dynamic> webtoons = jsonDecode(response.body);

      for (var webtoon in webtoons) {
        final webtoonInfo = WebtoonModel.fromJson(webtoon);
        webtoonsInstances.add(webtoonInfo);
      }
      return webtoonsInstances;
    } catch (error) {
      throw Error();
    }
  }

  static Future<WebtoonDetailModel> getToonById(String id) async {
    final url = Uri.parse("$baseUrl/$id");
    try {
      final response = await http.get(url);
      final webtoon = jsonDecode(response.body);
      return WebtoonDetailModel.fromJson(webtoon);
    } catch (error) {
      throw Error();
    }
  }

  static Future<List<WebtoonEpisodeModel>> getLatestEpisodeById(
      String id) async {
    List<WebtoonEpisodeModel> episodesInstances = [];
    final url = Uri.parse("$baseUrl/$id/episodes");
    try {
      final response = await http.get(url);
      final episodes = jsonDecode(response.body);
      for (var episode in episodes) {
        final episodeInfo = WebtoonEpisodeModel.formJson(episode);
        episodesInstances.add(episodeInfo);
      }
      return episodesInstances;
    } catch (error) {
      throw Error();
    }
  }
}
