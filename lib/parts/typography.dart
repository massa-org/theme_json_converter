part of theme_json_converter;

class NullableTypographyConverter
    extends JsonConverter<Typography?, Map<String, dynamic>?> {
  const NullableTypographyConverter();

  @override
  Typography? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return Typography.material2018(
      black: const NullableTextThemeConverter().fromJson(
        json['black'],
      ),
      dense: const NullableTextThemeConverter().fromJson(
        json['dense'],
      ),
      englishLike: const NullableTextThemeConverter().fromJson(
        json['englishLike'],
      ),
      platform: const NullableTargetPlatformConverter().fromJson(
        json['platform'],
      ),
      tall: const NullableTextThemeConverter().fromJson(
        json['tall'],
      ),
      white: const NullableTextThemeConverter().fromJson(
        json['white'],
      ),
    );
  }

  @override
  Map<String, dynamic>? toJson(Typography? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'black': const NullableTextThemeConverter().toJson(value.black),
      'dense': const NullableTextThemeConverter().toJson(value.dense),
      'englishLike':
          const NullableTextThemeConverter().toJson(value.englishLike),
      'tall': const NullableTextThemeConverter().toJson(value.tall),
      'white': const NullableTextThemeConverter().toJson(value.white),
    };

    throw 'Json_Unsuported_Value';
  }
}

class TypographyConverter
    extends JsonConverter<Typography, Map<String, dynamic>> {
  const TypographyConverter();

  @override
  Typography fromJson(Map<String, dynamic> json) {
    return const NullableTypographyConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(Typography value) {
    return const NullableTypographyConverter().toJson(value)!;
  }
}
