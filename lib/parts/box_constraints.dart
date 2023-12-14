part of theme_json_converter;

class NullableBoxConstraintsConverter
    extends JsonConverter<BoxConstraints?, dynamic> {
  const NullableBoxConstraintsConverter();

  @override
  BoxConstraints? fromJson(json) => const TypedNullableBoxConstraintsConverter()
      .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableBoxConstraintsConverter().toJson(object);
}

class TypedNullableBoxConstraintsConverter
    extends JsonConverter<BoxConstraints?, Map<String, dynamic>?> {
  const TypedNullableBoxConstraintsConverter();
  @override
  BoxConstraints? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return BoxConstraints(
      maxHeight: ((json['maxHeight'] ?? double.infinity) as num).toDouble(),
      maxWidth: ((json['maxWidth'] ?? double.infinity) as num).toDouble(),
      minHeight: ((json['minHeight'] ?? 0) as num).toDouble(),
      minWidth: ((json['minWidth'] ?? 0) as num).toDouble(),
    );
  }

  @override
  Map<String, dynamic>? toJson(BoxConstraints? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'maxHeight': value.maxHeight == double.infinity ? null : value.maxHeight,
      'maxWidth': value.maxWidth == double.infinity ? null : value.maxWidth,
      'minHeight': value.minHeight,
      'minWidth': value.minWidth,
    };

    throw 'Json_Unsuported_Value';
  }
}

class BoxConstraintsConverter extends JsonConverter<BoxConstraints, dynamic> {
  const BoxConstraintsConverter();

  @override
  BoxConstraints fromJson(json) => const TypedBoxConstraintsConverter()
      .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) => const TypedBoxConstraintsConverter().toJson(object);
}

class TypedBoxConstraintsConverter
    extends JsonConverter<BoxConstraints, Map<String, dynamic>> {
  const TypedBoxConstraintsConverter();
  @override
  BoxConstraints fromJson(Map<String, dynamic> json) {
    return const NullableBoxConstraintsConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(BoxConstraints value) {
    return const NullableBoxConstraintsConverter().toJson(value)!;
  }
}
