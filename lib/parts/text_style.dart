part of theme_json_converter;

class NullableTextStyleConverter
    extends JsonConverter<TextStyle?, Map<String, dynamic>?> {
  const NullableTextStyleConverter();

  @override
  TextStyle? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return TextStyle(
      // @unencodable
      // background
      backgroundColor: const NullableColorConverter().fromJson(
        json['backgroundColor'],
      ),
      color: const NullableColorConverter().fromJson(
        json['color'],
      ),
      decoration: const NullableTextDecorationConverter().fromJson(
        json['decoration'],
      ),
      decorationColor: const NullableColorConverter().fromJson(
        json['decorationColor'],
      ),
      decorationStyle: const NullableTextDecorationStyleConverter().fromJson(
        json['decorationStyle'],
      ),
      decorationThickness: (json['decorationThickness'] as num?)?.toDouble(),
      fontFamily: json['fontFamily'],
      fontFamilyFallback: json['fontFamilyFallback'] == null
          ? null
          : List<String>.from(json['fontFamilyFallback']),
      fontFeatures: json['fontFeatures'] == null
          ? null
          : List<FontFeature>.from(
              json['fontFeatures'].map(
                (json) => const NullableFontFeatureConverter().fromJson(
                  json,
                ),
              ),
            ),
      fontWeight: const NullableFontWeightConverter().fromJson(
        json['fontWeight'],
      ),
      fontSize: (json['fontSize'] as num?)?.toDouble(),
      fontStyle: const NullableFontStyleConverter().fromJson(
        json['fontStyle'],
      ),
      // @unencodable
      // foreground
      height: (json['height'] as num?)?.toDouble(),
      inherit: json['inherit'] == null ? true : (json['inherit'] as bool),
      letterSpacing: (json['letterSpacing'] as num?)?.toDouble(),
      locale: const NullableLocaleConverter().fromJson(
        json['locale'],
      ),
      package: json['package'],
      shadows: json['shadows'] == null
          ? null
          : List<Shadow>.from(
              json['shadows'].map(
                (json) => const NullableShadowConverter().fromJson(json),
              ),
            ),
      textBaseline: const NullableTextBaselineConverter().fromJson(
        json['textBaseline'],
      ),
      wordSpacing: (json['wordSpacing'] as num?)?.toDouble(),
    );
  }

  @override
  Map<String, dynamic>? toJson(TextStyle? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'backgroundColor':
          const NullableColorConverter().toJson(value.backgroundColor),
      'color': const NullableColorConverter().toJson(value.color),
      'decoration':
          const NullableTextDecorationConverter().toJson(value.decoration),
      'decorationColor':
          const NullableColorConverter().toJson(value.decorationColor),
      'decorationStyle': const NullableTextDecorationStyleConverter()
          .toJson(value.decorationStyle),
      'decorationThickness': value.decorationThickness,
      'fontFamily': value.fontFamily,
      'fontFamilyFallback': value.fontFamilyFallback,
      'fontFeatures': value.fontFeatures == null
          ? null
          : value.fontFeatures!
              .map(
                (value) => const NullableFontFeatureConverter().toJson(value),
              )
              .toList(),
      'fontWeight':
          const NullableFontWeightConverter().toJson(value.fontWeight),
      'fontSize': value.fontSize,
      'fontStyle': const NullableFontStyleConverter().toJson(value.fontStyle),
      'height': value.height,
      'inherit': value.inherit,
      'letterSpacing': value.letterSpacing,
      'locale': const NullableLocaleConverter().toJson(value.locale),
      'shadows': value.shadows == null
          ? null
          : value.shadows!
              .map(
                (value) => const NullableShadowConverter().toJson(value),
              )
              .toList(),
      'textBaseline':
          const NullableTextBaselineConverter().toJson(value.textBaseline),
      'wordSpacing': value.wordSpacing,
    };

    throw 'Json_Unsuported_Value';
  }
}

class TextStyleConverter
    extends JsonConverter<TextStyle, Map<String, dynamic>> {
  const TextStyleConverter();

  @override
  TextStyle fromJson(Map<String, dynamic> json) {
    return const NullableTextStyleConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(TextStyle value) {
    return const NullableTextStyleConverter().toJson(value)!;
  }
}
