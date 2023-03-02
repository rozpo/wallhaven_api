import 'dart:convert';

import 'package:http/http.dart';

import '../models/models.dart';

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

  Future<Collections> collection({
    required String username,
    required int id,
    String? apiKey,
  }) async {
    return Collections.fromJson(
      await _request(
        Uri.parse(
          '$_baseUrl/collections/$username/$id${apiKey != null ? '?apikey=$apiKey' : ''}',
        ),
      ),
    );
  }

  Future<Collections> collections({
    String? username,
    String? apiKey,
  }) async {
    assert(username != null || apiKey != null);
    return Collections.fromJson(
      await _request(
        Uri.parse(
          '$_baseUrl/collections${username != null ? '/$username' : ''}${apiKey != null ? '?apikey=$apiKey' : ''}',
        ),
      ),
    );
  }

  Future<Search> search({String? apiKey}) async {
    return Search.fromJson(
      await _request(
        Uri.parse(
          '$_baseUrl/search${apiKey != null ? '?apikey=$apiKey' : ''}',
        ),
      ),
    );
  }

  Future<Settings> settings({String? apiKey}) async {
    return Settings.fromJson(
      await _request(
        Uri.parse(
          '$_baseUrl/settings${apiKey != null ? '?apikey=$apiKey' : ''}',
        ),
      ),
    );
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

  Future<Wallpaper> wallpaper(String id, {String? apiKey}) async {
    return Wallpaper.fromJson(
      await _request(
        Uri.parse(
          '$_baseUrl/w/$id${apiKey != null ? '?apikey=$apiKey' : ''}',
        ),
      ),
    );
  }
}
