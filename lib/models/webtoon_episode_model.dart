class WebtoonEpisodeModel {
  final String id, title, rating, date;

  WebtoonEpisodeModel.formJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        rating = json['rating'],
        date = json['title'];
}
