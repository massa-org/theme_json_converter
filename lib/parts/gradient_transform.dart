part of theme_json_converter;

class NullableGradientTransformConverter
    extends JsonConverter<GradientTransform?, Map<String, dynamic>?> {
  const NullableGradientTransformConverter();

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
    extends JsonConverter<GradientTransform, Map<String, dynamic>> {
  const GradientTransformConverter();

  @override
  GradientTransform fromJson(Map<String, dynamic> json) {
    return const NullableGradientTransformConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(GradientTransform value) {
    return const NullableGradientTransformConverter().toJson(value)!;
  }
}
