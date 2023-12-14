part of theme_json_converter;

class NullableSemanticsTagConverter
    extends JsonConverter<SemanticsTag?, dynamic> {
  const NullableSemanticsTagConverter();

  @override
  SemanticsTag? fromJson(json) => const TypedNullableSemanticsTagConverter()
      .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableSemanticsTagConverter().toJson(object);
}

class TypedNullableSemanticsTagConverter
    extends JsonConverter<SemanticsTag?, Map<String, dynamic>?> {
  const TypedNullableSemanticsTagConverter();
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

class SemanticsTagConverter extends JsonConverter<SemanticsTag, dynamic> {
  const SemanticsTagConverter();

  @override
  SemanticsTag fromJson(json) => const TypedSemanticsTagConverter()
      .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) => const TypedSemanticsTagConverter().toJson(object);
}

class TypedSemanticsTagConverter
    extends JsonConverter<SemanticsTag, Map<String, dynamic>> {
  const TypedSemanticsTagConverter();
  @override
  SemanticsTag fromJson(Map<String, dynamic> json) {
    return const NullableSemanticsTagConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(SemanticsTag value) {
    return const NullableSemanticsTagConverter().toJson(value)!;
  }
}
