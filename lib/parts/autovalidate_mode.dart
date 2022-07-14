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
  String? toJson(AutovalidateMode? object) {
    if (object == null) return null;

    switch (object) {
      case AutovalidateMode.always:
        return 'always';

      case AutovalidateMode.disabled:
        return 'disabled';

      case AutovalidateMode.onUserInteraction:
        return 'onUserInteraction';
    }
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
  String toJson(AutovalidateMode object) {
    return const NullableAutovalidateModeConverter().toJson(object)!;
  }
}
