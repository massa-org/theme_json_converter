part of theme_json_converter;

class NullableTargetPlatformConverter
    extends JsonConverter<TargetPlatform?, String?> {
  const NullableTargetPlatformConverter();

  @override
  TargetPlatform? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'android':
        return TargetPlatform.android;

      case 'fuchsia':
        return TargetPlatform.fuchsia;

      case 'iOS':
        return TargetPlatform.iOS;

      case 'linux':
        return TargetPlatform.linux;

      case 'macOS':
        return TargetPlatform.macOS;

      case 'windows':
        return TargetPlatform.windows;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(TargetPlatform? object) {
    if (object == null) return null;

    switch (object) {
      case TargetPlatform.android:
        return 'android';

      case TargetPlatform.fuchsia:
        return 'fuchsia';

      case TargetPlatform.iOS:
        return 'iOS';

      case TargetPlatform.linux:
        return 'linux';

      case TargetPlatform.macOS:
        return 'macOS';

      case TargetPlatform.windows:
        return 'windows';
    }
  }
}

class TargetPlatformConverter extends JsonConverter<TargetPlatform, String> {
  const TargetPlatformConverter();

  @override
  TargetPlatform fromJson(String json) {
    return const NullableTargetPlatformConverter().fromJson(json)!;
  }

  @override
  String toJson(TargetPlatform object) {
    return const NullableTargetPlatformConverter().toJson(object)!;
  }
}
