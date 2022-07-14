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
  Map<String, dynamic>? toJson(TextStyle? object) {
    if (object == null) return null;

    return <String, dynamic>{
      'backgroundColor':
          const NullableColorConverter().toJson(object.backgroundColor),
      'color': const NullableColorConverter().toJson(object.color),
      'decoration':
          const NullableTextDecorationConverter().toJson(object.decoration),
      'decorationColor':
          const NullableColorConverter().toJson(object.decorationColor),
      'decorationStyle': const NullableTextDecorationStyleConverter()
          .toJson(object.decorationStyle),
      'decorationThickness': object.decorationThickness,
      'fontFamily': object.fontFamily,
      'fontFamilyFallback': object.fontFamilyFallback,
      'fontFeatures': object.fontFeatures == null
          ? null
          : object.fontFeatures!
              .map(
                (object) => const NullableFontFeatureConverter().toJson(object),
              )
              .toList(),
      'fontWeight':
          const NullableFontWeightConverter().toJson(object.fontWeight),
      'fontSize': object.fontSize,
      'fontStyle': const NullableFontStyleConverter().toJson(object.fontStyle),
      'height': object.height,
      'inherit': object.inherit,
      'letterSpacing': object.letterSpacing,
      'locale': const NullableLocaleConverter().toJson(object.locale),
      'shadows': object.shadows == null
          ? null
          : object.shadows!
              .map(
                (object) => const NullableShadowConverter().toJson(object),
              )
              .toList(),
      'textBaseline':
          const NullableTextBaselineConverter().toJson(object.textBaseline),
      'wordSpacing': object.wordSpacing,
    };
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
  Map<String, dynamic> toJson(TextStyle object) {
    return const NullableTextStyleConverter().toJson(object)!;
  }
}
