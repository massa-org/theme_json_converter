part of theme_json_converter;

class NullableGradientTransformConverter
    extends JsonConverter<GradientTransform?, dynamic> {
  const NullableGradientTransformConverter();

  @override
  GradientTransform? fromJson(json) =>
      const TypedNullableGradientTransformConverter()
          .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableGradientTransformConverter().toJson(object);
}

class TypedNullableGradientTransformConverter
    extends JsonConverter<GradientTransform?, Map<String, dynamic>?> {
  const TypedNullableGradientTransformConverter();
  @override
  GradientTransform? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return GradientRotation(
      (json['radians'] as num).toDouble(),
    );
  }

  @override
  Map<String, dynamic>? toJson(GradientTransform? value) {
    if (value == null) return null;

    assert(value == null || value is GradientRotation);
    Map<String, dynamic>? result;

    if (value != null && value is GradientRotation) {
      return {
        'radians': value.radians,
      };
    }

    throw 'Json_Unsuported_Value';
  }
}

class GradientTransformConverter
    extends JsonConverter<GradientTransform, dynamic> {
  const GradientTransformConverter();

  @override
  GradientTransform fromJson(json) => const TypedGradientTransformConverter()
      .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) =>
      const TypedGradientTransformConverter().toJson(object);
}

class TypedGradientTransformConverter
    extends JsonConverter<GradientTransform, Map<String, dynamic>> {
  const TypedGradientTransformConverter();
  @override
  GradientTransform fromJson(Map<String, dynamic> json) {
    return const NullableGradientTransformConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(GradientTransform value) {
    return const NullableGradientTransformConverter().toJson(value)!;
  }
}
