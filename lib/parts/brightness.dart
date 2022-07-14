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
  String? toJson(Brightness? object) {
    if (object == null) return null;

    switch (object) {
      case Brightness.dark:
        return 'dark';

      case Brightness.light:
        return 'light';
    }
  }
}

class BrightnessConverter extends JsonConverter<Brightness, String> {
  const BrightnessConverter();

  @override
  Brightness fromJson(String json) {
    return const NullableBrightnessConverter().fromJson(json)!;
  }

  @override
  String toJson(Brightness object) {
    return const NullableBrightnessConverter().toJson(object)!;
  }
}
