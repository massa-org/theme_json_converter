part of theme_json_converter;

class NullableButtonBarLayoutBehaviorConverter
    extends JsonConverter<ButtonBarLayoutBehavior?, String?> {
  const NullableButtonBarLayoutBehaviorConverter();

  @override
  ButtonBarLayoutBehavior? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'constrained':
        return ButtonBarLayoutBehavior.constrained;

      case 'padded':
        return ButtonBarLayoutBehavior.padded;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(ButtonBarLayoutBehavior? object) {
    if (object == null) return null;

    switch (object) {
      case ButtonBarLayoutBehavior.constrained:
        return 'constrained';
      case ButtonBarLayoutBehavior.padded:
        return 'padded';
    }
  }
}

class ButtonBarLayoutBehaviorConverter
    extends JsonConverter<ButtonBarLayoutBehavior, String> {
  const ButtonBarLayoutBehaviorConverter();

  @override
  ButtonBarLayoutBehavior fromJson(String json) {
    return const NullableButtonBarLayoutBehaviorConverter().fromJson(json)!;
  }

  @override
  String toJson(ButtonBarLayoutBehavior object) {
    return const NullableButtonBarLayoutBehaviorConverter().toJson(object)!;
  }
}
