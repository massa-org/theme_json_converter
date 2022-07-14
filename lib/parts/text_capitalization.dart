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
  String? toJson(TextCapitalization? object) {
    if (object == null) return null;

    switch (object) {
      case TextCapitalization.characters:
        return 'characters';

      case TextCapitalization.none:
        return 'none';

      case TextCapitalization.sentences:
        return 'sentences';

      case TextCapitalization.words:
        return 'words';
    }
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
  String toJson(TextCapitalization object) {
    return const NullableTextCapitalizationConverter().toJson(object)!;
  }
}
