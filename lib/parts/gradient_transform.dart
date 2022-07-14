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
  Map<String, dynamic>? toJson(GradientTransform? object) {
    if (object == null) return null;

    assert(object is GradientRotation);

    if (object is GradientRotation) {
      return {
        'radians': object.radians,
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
  Map<String, dynamic> toJson(GradientTransform object) {
    return const NullableGradientTransformConverter().toJson(object)!;
  }
}
