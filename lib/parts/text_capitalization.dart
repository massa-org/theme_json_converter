part of theme_json_converter;

class NullableTextCapitalizationConverter
    extends JsonConverter<TextCapitalization?, String?> {
  const NullableTextCapitalizationConverter();

  @override
  TextCapitalization? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'characters':
        return TextCapitalization.characters;

      case 'none':
        return TextCapitalization.none;

      case 'sentences':
        return TextCapitalization.sentences;

      case 'words':
        return TextCapitalization.words;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(TextCapitalization? value) {
    if (value == null) return null;

    switch (value) {
      case TextCapitalization.characters:
        return 'characters';
        break;

      case TextCapitalization.none:
        return 'none';
        break;

      case TextCapitalization.sentences:
        return 'sentences';
        break;

      case TextCapitalization.words:
        return 'words';
        break;
    }

    throw 'Json_Unsuported_Value';
  }
}

class TextCapitalizationConverter
    extends JsonConverter<TextCapitalization, String> {
  const TextCapitalizationConverter();

  @override
  TextCapitalization fromJson(String json) {
    return const NullableTextCapitalizationConverter().fromJson(json)!;
  }

  @override
  String toJson(TextCapitalization value) {
    return const NullableTextCapitalizationConverter().toJson(value)!;
  }
}
