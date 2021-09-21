part of theme_json_converter;

class NullableFloatingLabelBehaviorConverter
    extends JsonConverter<FloatingLabelBehavior?, String?> {
  const NullableFloatingLabelBehaviorConverter();

  @override
  FloatingLabelBehavior? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'always':
        return FloatingLabelBehavior.always;

      case 'auto':
        return FloatingLabelBehavior.auto;

      case 'never':
        return FloatingLabelBehavior.never;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(FloatingLabelBehavior? value) {
    if (value == null) return null;

    switch (value) {
      case FloatingLabelBehavior.always:
        return 'always';
        break;

      case FloatingLabelBehavior.auto:
        return 'auto';
        break;

      case FloatingLabelBehavior.never:
        return 'never';
        break;
    }

    throw 'Json_Unsuported_Value';
  }
}

class FloatingLabelBehaviorConverter
    extends JsonConverter<FloatingLabelBehavior, String> {
  const FloatingLabelBehaviorConverter();

  @override
  FloatingLabelBehavior fromJson(String json) {
    return const NullableFloatingLabelBehaviorConverter().fromJson(json)!;
  }

  @override
  String toJson(FloatingLabelBehavior value) {
    return const NullableFloatingLabelBehaviorConverter().toJson(value)!;
  }
}
