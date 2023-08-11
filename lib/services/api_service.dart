import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  void getTodaysToons() async {
    final url = Uri.parse('$baseUrl/$today');
    try {
      final response = await http.get(url);
      print(response.body);
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
