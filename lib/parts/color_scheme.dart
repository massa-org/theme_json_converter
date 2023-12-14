part of theme_json_converter;

class NullableColorSchemeConverter
    extends JsonConverter<ColorScheme?, dynamic> {
  const NullableColorSchemeConverter();

  @override
  ColorScheme? fromJson(json) => const TypedNullableColorSchemeConverter()
      .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableColorSchemeConverter().toJson(object);
}

class TypedNullableColorSchemeConverter
    extends JsonConverter<ColorScheme?, Map<String, dynamic>?> {
  const TypedNullableColorSchemeConverter();
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
  Map<String, dynamic>? toJson(ColorScheme? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'background': const NullableColorConverter().toJson(value.background),
      'brightness':
          const NullableBrightnessConverter().toJson(value.brightness),
      'error': const NullableColorConverter().toJson(value.error),
      'onBackground': const NullableColorConverter().toJson(value.onBackground),
      'onError': const NullableColorConverter().toJson(value.onError),
      'onPrimary': const NullableColorConverter().toJson(value.onPrimary),
      'onSecondary': const NullableColorConverter().toJson(value.onSecondary),
      'onSurface': const NullableColorConverter().toJson(value.onSurface),
      'primary': const NullableColorConverter().toJson(value.primary),
      'primaryVariant':
          const NullableColorConverter().toJson(value.primaryVariant),
      'secondary': const NullableColorConverter().toJson(value.secondary),
      'secondaryVariant':
          const NullableColorConverter().toJson(value.secondaryVariant),
      'surface': const NullableColorConverter().toJson(value.surface),
    };

    throw 'Json_Unsuported_Value';
  }
}

class ColorSchemeConverter extends JsonConverter<ColorScheme, dynamic> {
  const ColorSchemeConverter();

  @override
  ColorScheme fromJson(json) => const TypedColorSchemeConverter()
      .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) => const TypedColorSchemeConverter().toJson(object);
}

class TypedColorSchemeConverter
    extends JsonConverter<ColorScheme, Map<String, dynamic>> {
  const TypedColorSchemeConverter();
  @override
  ColorScheme fromJson(Map<String, dynamic> json) {
    return const NullableColorSchemeConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(ColorScheme value) {
    return const NullableColorSchemeConverter().toJson(value)!;
  }
}
