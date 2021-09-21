part of theme_json_converter;

class NullableFloatingActionButtonAnimatorConverter
    extends JsonConverter<FloatingActionButtonAnimator?, String?> {
  const NullableFloatingActionButtonAnimatorConverter();

  @override
  FloatingActionButtonAnimator? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'scaling':
        return FloatingActionButtonAnimator.scaling;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(FloatingActionButtonAnimator? value) {
    if (value == null) return null;

    if (value == FloatingActionButtonAnimator.scaling) {
      return 'scaling';
    }

    throw 'Json_Unsuported_Value';
  }
}

class FloatingActionButtonAnimatorConverter
    extends JsonConverter<FloatingActionButtonAnimator, String> {
  const FloatingActionButtonAnimatorConverter();

  @override
  FloatingActionButtonAnimator fromJson(String json) {
    return const NullableFloatingActionButtonAnimatorConverter()
        .fromJson(json)!;
  }

  @override
  String toJson(FloatingActionButtonAnimator value) {
    return const NullableFloatingActionButtonAnimatorConverter().toJson(value)!;
  }
}
