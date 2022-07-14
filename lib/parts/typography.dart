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
  Map<String, dynamic>? toJson(Typography? object) {
    if (object == null) return null;

    return <String, dynamic>{
      'black': const NullableTextThemeConverter().toJson(object.black),
      'dense': const NullableTextThemeConverter().toJson(object.dense),
      'englishLike':
          const NullableTextThemeConverter().toJson(object.englishLike),
      'tall': const NullableTextThemeConverter().toJson(object.tall),
      'white': const NullableTextThemeConverter().toJson(object.white),
    };
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
  Map<String, dynamic> toJson(Typography object) {
    return const NullableTypographyConverter().toJson(object)!;
  }
}
