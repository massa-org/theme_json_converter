part of theme_json_converter;

class NullableFontFeatureConverter
    extends JsonConverter<FontFeature?, Map<String, dynamic>?> {
  const NullableFontFeatureConverter();

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

class FontFeatureConverter
    extends JsonConverter<FontFeature, Map<String, dynamic>> {
  const FontFeatureConverter();

  @override
  FontFeature fromJson(Map<String, dynamic> json) {
    return const NullableFontFeatureConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(FontFeature value) {
    return const NullableFontFeatureConverter().toJson(value)!;
  }
}
