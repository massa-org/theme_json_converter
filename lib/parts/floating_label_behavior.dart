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
  String? toJson(FloatingLabelBehavior? object) {
    if (object == null) return null;

    switch (object) {
      case FloatingLabelBehavior.always:
        return 'always';

      case FloatingLabelBehavior.auto:
        return 'auto';

      case FloatingLabelBehavior.never:
        return 'never';
    }
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
  String toJson(FloatingLabelBehavior object) {
    return const NullableFloatingLabelBehaviorConverter().toJson(object)!;
  }
}
