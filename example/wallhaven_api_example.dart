import 'package:wallhaven_api/models/models.dart';
import 'package:wallhaven_api/wallhaven_api.dart';

void main() async {
  WallhavenApiClient api = WallhavenApiClient();

  try {
    Wallpaper wallpaper = await api.wallpaper('id');
    print(wallpaper.data.path);
  } catch (e) {
    if (e is WallhavenException) {
      print(e.error);
    }
  }
}
