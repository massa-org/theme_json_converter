part of theme_json_converter;

class NullableBoxShadowConverter extends JsonConverter<BoxShadow?, dynamic> {
  const NullableBoxShadowConverter();

  @override
  BoxShadow? fromJson(json) => const TypedNullableBoxShadowConverter()
      .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableBoxShadowConverter().toJson(object);
}

class TypedNullableBoxShadowConverter
    extends JsonConverter<BoxShadow?, Map<String, dynamic>?> {
  const TypedNullableBoxShadowConverter();
  @override
  BoxShadow? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return BoxShadow(
      blurRadius: ((json['blurRadius'] ?? 0) as num).toDouble(),
      color: const NullableColorConverter().fromJson(
            json['color'],
          ) ??
          const Color(0xFF000000),
      offset: const NullableOffsetConverter().fromJson(
            json['offset'],
          ) ??
          Offset.zero,
      spreadRadius: ((json['spreadRadius'] ?? 0) as num).toDouble(),
    );
  }

  @override
  Map<String, dynamic>? toJson(BoxShadow? value) {
    if (value == null) return null;

    return {
      'blurRadius': value.blurRadius,
      'color': const NullableColorConverter().toJson(value.color),
      'offset': const NullableOffsetConverter().toJson(value.offset),
      'spreadRadius': value.spreadRadius,
    };

    throw 'Json_Unsuported_Value';
  }
}

class BoxShadowConverter extends JsonConverter<BoxShadow, dynamic> {
  const BoxShadowConverter();

  @override
  BoxShadow fromJson(json) => const TypedBoxShadowConverter()
      .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) => const TypedBoxShadowConverter().toJson(object);
}

class TypedBoxShadowConverter
    extends JsonConverter<BoxShadow, Map<String, dynamic>> {
  const TypedBoxShadowConverter();
  @override
  BoxShadow fromJson(Map<String, dynamic> json) {
    return const NullableBoxShadowConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(BoxShadow value) {
    return const NullableBoxShadowConverter().toJson(value)!;
  }
}
