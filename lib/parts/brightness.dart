part of theme_json_converter;

class NullableBrightnessConverter extends JsonConverter<Brightness?, String?> {
  const NullableBrightnessConverter();

  @override
  Brightness? fromJson(String? json) {
    if (json == null) return null;

    return json == 'light'
        ? Brightness.light
        : json == 'dark'
            ? Brightness.dark
            : null;
  }

  @override
  String? toJson(Brightness? value) {
    if (value == null) return null;

    switch (value) {
      case Brightness.dark:
        return 'dark';
        break;

      case Brightness.light:
        return 'light';
        break;
    }

    throw 'Json_Unsuported_Value';
  }
}

class BrightnessConverter extends JsonConverter<Brightness, String> {
  const BrightnessConverter();

  @override
  Brightness fromJson(String json) {
    return const NullableBrightnessConverter().fromJson(json)!;
  }

  @override
  String toJson(Brightness value) {
    return const NullableBrightnessConverter().toJson(value)!;
  }
}
