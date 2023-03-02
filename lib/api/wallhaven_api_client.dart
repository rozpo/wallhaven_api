import 'dart:convert';

import 'package:http/http.dart';
import 'package:wallhaven_api/models/models.dart';

class WallhavenApiClient {
  static const String _baseUrl = 'https://wallhaven.cc/api/v1';

  final Client _httpClient;

  WallhavenApiClient({Client? httpClient})
      : _httpClient = httpClient ?? Client();

  void close() => _httpClient.close();

  Future<Map<String, dynamic>> _request(Uri url) async {
    final Response response = await _httpClient.get(url);

    final Map<String, dynamic> data = jsonDecode(response.body);

    if (response.statusCode != 200) {
      throw WallhavenException.fromJson(data);
    }

    return data;
  }

  Future<Tag> tag(int id) async {
    return Tag.fromJson(
      await _request(
        Uri.parse(
          '$_baseUrl/tag/$id',
        ),
      ),
    );
  }
}
