part of theme_json_converter;

class NullableSemanticsTagConverter
    extends JsonConverter<SemanticsTag?, Map<String, dynamic>?> {
  const NullableSemanticsTagConverter();

  @override
  SemanticsTag? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return SemanticsTag(json['name']);
  }

  @override
  Map<String, dynamic>? toJson(SemanticsTag? value) {
    if (value == null) return null;

    return {
      'name': value.name,
    };

    throw 'Json_Unsuported_Value';
  }
}

class SemanticsTagConverter
    extends JsonConverter<SemanticsTag, Map<String, dynamic>> {
  const SemanticsTagConverter();

  @override
  SemanticsTag fromJson(Map<String, dynamic> json) {
    return const NullableSemanticsTagConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(SemanticsTag value) {
    return const NullableSemanticsTagConverter().toJson(value)!;
  }
}
