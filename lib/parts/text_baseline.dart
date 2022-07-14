part of theme_json_converter;

class NullableTextBaselineConverter
    extends JsonConverter<TextBaseline?, String?> {
  const NullableTextBaselineConverter();

  @override
  TextBaseline? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'alphabetic':
        return TextBaseline.alphabetic;

      case 'ideographic':
        return TextBaseline.ideographic;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(TextBaseline? object) {
    if (object == null) return null;

    switch (object) {
      case TextBaseline.alphabetic:
        return 'alphabetic';

      case TextBaseline.ideographic:
        return 'ideographic';
    }
  }
}

class TextBaselineConverter extends JsonConverter<TextBaseline, String> {
  const TextBaselineConverter();

  @override
  TextBaseline fromJson(String json) {
    return const NullableTextBaselineConverter().fromJson(json)!;
  }

  @override
  String toJson(TextBaseline object) {
    return const NullableTextBaselineConverter().toJson(object)!;
  }
}
