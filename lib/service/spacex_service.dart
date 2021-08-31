import 'package:dio/dio.dart';
import 'package:spacex/model/spacex_model.dart';

class SpaceXService {
  var dio = Dio();

  Future<List<SpaceX>> fetchTopHeadlines() async {
    String url = "https://api.spacexdata.com/v4/launches/latest";

    final response = await dio.get(url);

    if (response.statusCode == 200) {
      final result = response.data;
      Iterable list = result['articles'];
      return list.map((article) => SpaceX.fromJson(article)).toList();
    } else {
      throw Exception("failed get cactus!");
    }
  }
}
