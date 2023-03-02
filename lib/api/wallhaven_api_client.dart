import 'dart:convert';

import 'package:http/http.dart';

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
      // TODO throw exception
    }
    return data;
  }
}
