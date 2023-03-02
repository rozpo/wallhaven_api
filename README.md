<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

# Wallhaven API

This package is a wrapper written in the [Dart programming language](https://dart.dev/) for [Wallhaven](https://wallhaven.cc) API calls.

## Features

**WallhavenApiClient** can provide wrappers for the endpoints listed under [Wallhaven API documentation](https://wallhaven.cc/help/api).

## Getting started

To use package include **wallhaven_api** in your **pubspec.yaml** file.

```yaml
dependencies:
  wallhaven_api: ^0.1.0
```

## Usage

Initialize API Client:

```dart
WallhavenApiClient api = WallhavenApiClient();
```

Get wallpaper by ID:

```dart
try {
  Wallpaper wallpaper = await api.wallpaper('id');
  print(wallpaper.data.path);
} catch (e) {
  if (e is WallhavenException) {
    print(e.error);
  }
}
```

## Rate Limiting and Errors

Please follow the guideline from the [official API documentation](https://wallhaven.cc/help/api#limits).

## Package Limitations

Here is a list of known limitations that will be resolved in the future:

- No possibility for including a header to the request.
- Missing query params for a search endpoint.
- No error codes.

## Additional Information

Feel free to create a new [issue](https://github.com/rozpo/wallhaven_api/issues/new) if you found any problem with the package.

Create a [discussion](https://github.com/rozpo/wallhaven_api/discussions/new/choose) in case you think some features are missing.
