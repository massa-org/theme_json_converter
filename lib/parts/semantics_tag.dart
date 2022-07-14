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
  Map<String, dynamic>? toJson(SemanticsTag? object) {
    if (object == null) return null;

    return {
      'name': object.name,
    };
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
  Map<String, dynamic> toJson(SemanticsTag object) {
    return const NullableSemanticsTagConverter().toJson(object)!;
  }
}
