part of theme_json_converter;

class NullableOffsetConverter extends JsonConverter<Offset?, dynamic> {
  const NullableOffsetConverter();

  @override
  Offset? fromJson(json) => const TypedNullableOffsetConverter()
      .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) => const TypedNullableOffsetConverter().toJson(object);
}

class TypedNullableOffsetConverter
    extends JsonConverter<Offset?, Map<String, dynamic>?> {
  const TypedNullableOffsetConverter();
  @override
  Offset? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return Offset(
      ((json['dx'] ?? 0) as num).toDouble(),
      ((json['dy'] ?? 0) as num).toDouble(),
    );
  }

  @override
  Map<String, dynamic>? toJson(Offset? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'dx': value.dx,
      'dy': value.dy,
    };

    throw 'Json_Unsuported_Value';
  }
}

class OffsetConverter extends JsonConverter<Offset, dynamic> {
  const OffsetConverter();

  @override
  Offset fromJson(json) =>
      const TypedOffsetConverter().fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) => const TypedOffsetConverter().toJson(object);
}

class TypedOffsetConverter extends JsonConverter<Offset, Map<String, dynamic>> {
  const TypedOffsetConverter();
  @override
  Offset fromJson(Map<String, dynamic> json) {
    return const NullableOffsetConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(Offset value) {
    return const NullableOffsetConverter().toJson(value)!;
  }
}
