part of theme_json_converter;

class NullableShadowConverter
    extends JsonConverter<Shadow?, Map<String, dynamic>?> {
  const NullableShadowConverter();

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
  Map<String, dynamic>? toJson(Shadow? object) {
    if (object == null) return null;

    return <String, dynamic>{
      'blurRadius': object.blurRadius,
      'color': const NullableColorConverter().toJson(object.color),
      'offset': const NullableOffsetConverter().toJson(object.offset),
    };
  }
}

class ShadowConverter extends JsonConverter<Shadow, Map<String, dynamic>> {
  const ShadowConverter();

  @override
  Shadow fromJson(Map<String, dynamic> json) {
    return const NullableShadowConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(Shadow object) {
    return const NullableShadowConverter().toJson(object)!;
  }
}
