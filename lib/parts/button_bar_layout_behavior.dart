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
  String? toJson(ButtonBarLayoutBehavior? value) {
    if (value == null) return null;

    switch (value) {
      case ButtonBarLayoutBehavior.constrained:
        return 'constrained';
        break;
      case ButtonBarLayoutBehavior.padded:
        return 'padded';
        break;
    }

    throw 'Json_Unsuported_Value';
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
  String toJson(ButtonBarLayoutBehavior value) {
    return const NullableButtonBarLayoutBehaviorConverter().toJson(value)!;
  }
}
