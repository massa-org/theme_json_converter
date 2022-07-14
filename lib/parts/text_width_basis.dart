part of theme_json_converter;

class NullableTextWidthBasisConverter
    extends JsonConverter<TextWidthBasis?, String?> {
  const NullableTextWidthBasisConverter();

  @override
  TextWidthBasis? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'longestLine':
        return TextWidthBasis.longestLine;

      case 'parent':
        return TextWidthBasis.parent;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(TextWidthBasis? object) {
    if (object == null) return null;

    switch (object) {
      case TextWidthBasis.longestLine:
        return 'longestLine';
      case TextWidthBasis.parent:
        return 'parent';
    }
  }
}

class TextWidthBasisConverter extends JsonConverter<TextWidthBasis, String> {
  const TextWidthBasisConverter();

  @override
  TextWidthBasis fromJson(String json) {
    return const NullableTextWidthBasisConverter().fromJson(json)!;
  }

  @override
  String toJson(TextWidthBasis object) {
    return const NullableTextWidthBasisConverter().toJson(object)!;
  }
}
