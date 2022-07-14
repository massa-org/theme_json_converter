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
      primaryVariant: const NullableColorConverter().fromJson(
        json['primaryVariant'],
      )!,
      secondary: const NullableColorConverter().fromJson(
        json['secondary'],
      )!,
      secondaryVariant: const NullableColorConverter().fromJson(
        json['secondaryVariant'],
      )!,
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
      'primaryVariant':
          const NullableColorConverter().toJson(object.primaryVariant),
      'secondary': const NullableColorConverter().toJson(object.secondary),
      'secondaryVariant':
          const NullableColorConverter().toJson(object.secondaryVariant),
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
