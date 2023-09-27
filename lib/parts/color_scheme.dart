// ignore_for_file: deprecated_member_use

part of theme_json_converter;

class NullableColorSchemeConverter
    extends JsonConverter<ColorScheme?, Map<String, dynamic>?> {
  const NullableColorSchemeConverter();

  @override
  ColorScheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return ColorScheme(
      background: const NullableColorConverter().fromJson(
        json['background'],
      )!,
      brightness: const NullableBrightnessConverter().fromJson(
        json['brightness'],
      )!,
      error: const NullableColorConverter().fromJson(
        json['error'],
      )!,
      onBackground: const NullableColorConverter().fromJson(
        json['onBackground'],
      )!,
      onError: const NullableColorConverter().fromJson(
        json['onError'],
      )!,
      onPrimary: const NullableColorConverter().fromJson(
        json['onPrimary'],
      )!,
      onSecondary: const NullableColorConverter().fromJson(
        json['onSecondary'],
      )!,
      onSurface: const NullableColorConverter().fromJson(
        json['onSurface'],
      )!,
      primary: const NullableColorConverter().fromJson(
        json['primary'],
      )!,
      primaryContainer: const NullableColorConverter().fromJson(
        json['primaryContainer'],
      ),
      onPrimaryContainer: const NullableColorConverter().fromJson(
        json['onPrimaryContainer'],
      ),
      secondary: const NullableColorConverter().fromJson(
        json['secondary'],
      )!,
      secondaryContainer: const NullableColorConverter().fromJson(
        json['secondaryContainer'],
      ),
      onSecondaryContainer: const NullableColorConverter().fromJson(
        json['onSecondaryContainer'],
      ),
      surface: const NullableColorConverter().fromJson(
        json['surface'],
      )!,
    );
  }

  @override
  Map<String, dynamic>? toJson(ColorScheme? object) {
    if (object == null) return null;

    return <String, dynamic>{
      'background': const NullableColorConverter().toJson(object.background),
      'brightness':
          const NullableBrightnessConverter().toJson(object.brightness),
      'error': const NullableColorConverter().toJson(object.error),
      'onBackground':
          const NullableColorConverter().toJson(object.onBackground),
      'onError': const NullableColorConverter().toJson(object.onError),
      'onPrimary': const NullableColorConverter().toJson(object.onPrimary),
      'onSecondary': const NullableColorConverter().toJson(object.onSecondary),
      'onSurface': const NullableColorConverter().toJson(object.onSurface),
      'primary': const NullableColorConverter().toJson(object.primary),
      'primaryContainer':
          const NullableColorConverter().toJson(object.primaryContainer),
      'onPrimaryContainer':
          const NullableColorConverter().toJson(object.onPrimaryContainer),
      'secondary': const NullableColorConverter().toJson(object.secondary),
      'secondaryContainer':
          const NullableColorConverter().toJson(object.secondaryContainer),
      'onSecondaryContainer':
          const NullableColorConverter().toJson(object.onSecondaryContainer),
      'surface': const NullableColorConverter().toJson(object.surface),
    };
  }
}

class ColorSchemeConverter
    extends JsonConverter<ColorScheme, Map<String, dynamic>> {
  const ColorSchemeConverter();

  @override
  ColorScheme fromJson(Map<String, dynamic> json) {
    return const NullableColorSchemeConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(ColorScheme object) {
    return const NullableColorSchemeConverter().toJson(object)!;
  }
}
