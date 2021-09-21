part of theme_json_converter;

class NullableAutovalidateModeConverter
    extends JsonConverter<AutovalidateMode?, String?> {
  const NullableAutovalidateModeConverter();

  @override
  AutovalidateMode? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'always':
        return AutovalidateMode.always;

      case 'disabled':
        return AutovalidateMode.disabled;

      case 'onUserInteraction':
        return AutovalidateMode.onUserInteraction;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(AutovalidateMode? value) {
    if (value == null) return null;

    switch (value) {
      case AutovalidateMode.always:
        return 'always';
        break;

      case AutovalidateMode.disabled:
        return 'disabled';
        break;

      case AutovalidateMode.onUserInteraction:
        return 'onUserInteraction';
        break;
    }

    throw 'Json_Unsuported_Value';
  }
}

class AutovalidateModeConverter
    extends JsonConverter<AutovalidateMode, String> {
  const AutovalidateModeConverter();

  @override
  AutovalidateMode fromJson(String json) {
    return const NullableAutovalidateModeConverter().fromJson(json)!;
  }

  @override
  String toJson(AutovalidateMode value) {
    return const NullableAutovalidateModeConverter().toJson(value)!;
  }
}
