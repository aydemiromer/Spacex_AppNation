import 'package:dio/dio.dart';
import 'package:spacex/model/spacex_model.dart';

class SpaceXService {
  var dio = Dio();

  Future<List<Articles>> fetchTopHeadlines() async {
    String url = "https://apitest-70a9a-default-rtdb.firebaseio.com/.json";

    final response = await dio.get(url);

    if (response.statusCode == 200) {
      final result = response.data;
      Iterable list = result['articles'];
      return list.map((article) => Articles.fromJson(article)).toList();
    } else {
      throw Exception("failed get cactus!");
    }
  }
}
