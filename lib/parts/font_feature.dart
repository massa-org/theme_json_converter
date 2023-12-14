part of theme_json_converter;

class NullableFontFeatureConverter
    extends JsonConverter<FontFeature?, dynamic> {
  const NullableFontFeatureConverter();

  @override
  FontFeature? fromJson(json) => const TypedNullableFontFeatureConverter()
      .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableFontFeatureConverter().toJson(object);
}

class TypedNullableFontFeatureConverter
    extends JsonConverter<FontFeature?, Map<String, dynamic>?> {
  const TypedNullableFontFeatureConverter();
  @override
  FontFeature? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return FontFeature(
      json['feature'],
      (json['json'] as num).toInt(),
    );
  }

  @override
  Map<String, dynamic>? toJson(FontFeature? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'feature': value.feature,
      'value': value.value,
    };

    throw 'Json_Unsuported_Value';
  }
}

class FontFeatureConverter extends JsonConverter<FontFeature, dynamic> {
  const FontFeatureConverter();

  @override
  FontFeature fromJson(json) => const TypedFontFeatureConverter()
      .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) => const TypedFontFeatureConverter().toJson(object);
}

class TypedFontFeatureConverter
    extends JsonConverter<FontFeature, Map<String, dynamic>> {
  const TypedFontFeatureConverter();
  @override
  FontFeature fromJson(Map<String, dynamic> json) {
    return const NullableFontFeatureConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(FontFeature value) {
    return const NullableFontFeatureConverter().toJson(value)!;
  }
}
