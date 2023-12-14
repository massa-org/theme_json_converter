part of theme_json_converter;

class NullableShadowConverter extends JsonConverter<Shadow?, dynamic> {
  const NullableShadowConverter();

  @override
  Shadow? fromJson(json) => const TypedNullableShadowConverter()
      .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) => const TypedNullableShadowConverter().toJson(object);
}

class TypedNullableShadowConverter
    extends JsonConverter<Shadow?, Map<String, dynamic>?> {
  const TypedNullableShadowConverter();
  @override
  Shadow? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return Shadow(
      blurRadius: ((json['blurRadius'] ?? 0.0) as num).toDouble(),
      color: const NullableColorConverter().fromJson(
        json['color'],
      )!,
      offset: const NullableOffsetConverter().fromJson(
        json['offset'],
      )!,
    );
  }

  @override
  Map<String, dynamic>? toJson(Shadow? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'blurRadius': value.blurRadius,
      'color': const NullableColorConverter().toJson(value.color),
      'offset': const NullableOffsetConverter().toJson(value.offset),
    };

    throw 'Json_Unsuported_Value';
  }
}

class ShadowConverter extends JsonConverter<Shadow, dynamic> {
  const ShadowConverter();

  @override
  Shadow fromJson(json) =>
      const TypedShadowConverter().fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) => const TypedShadowConverter().toJson(object);
}

class TypedShadowConverter extends JsonConverter<Shadow, Map<String, dynamic>> {
  const TypedShadowConverter();
  @override
  Shadow fromJson(Map<String, dynamic> json) {
    return const NullableShadowConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(Shadow value) {
    return const NullableShadowConverter().toJson(value)!;
  }
}
