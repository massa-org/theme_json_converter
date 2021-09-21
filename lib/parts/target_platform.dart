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
  String? toJson(TargetPlatform? value) {
    if (value == null) return null;

    switch (value) {
      case TargetPlatform.android:
        return 'android';
        break;

      case TargetPlatform.fuchsia:
        return 'fuchsia';
        break;

      case TargetPlatform.iOS:
        return 'iOS';
        break;

      case TargetPlatform.linux:
        return 'linux';
        break;

      case TargetPlatform.macOS:
        return 'macOS';
        break;

      case TargetPlatform.windows:
        return 'windows';
        break;
    }

    throw 'Json_Unsuported_Value';
  }
}

class TargetPlatformConverter extends JsonConverter<TargetPlatform, String> {
  const TargetPlatformConverter();

  @override
  TargetPlatform fromJson(String json) {
    return const NullableTargetPlatformConverter().fromJson(json)!;
  }

  @override
  String toJson(TargetPlatform value) {
    return const NullableTargetPlatformConverter().toJson(value)!;
  }
}
