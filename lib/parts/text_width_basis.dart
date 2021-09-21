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
  String? toJson(TextWidthBasis? value) {
    if (value == null) return null;

    switch (value) {
      case TextWidthBasis.longestLine:
        return 'longestLine';
        break;
      case TextWidthBasis.parent:
        return 'parent';
        break;
    }

    throw 'Json_Unsuported_Value';
  }
}

class TextWidthBasisConverter extends JsonConverter<TextWidthBasis, String> {
  const TextWidthBasisConverter();

  @override
  TextWidthBasis fromJson(String json) {
    return const NullableTextWidthBasisConverter().fromJson(json)!;
  }

  @override
  String toJson(TextWidthBasis value) {
    return const NullableTextWidthBasisConverter().toJson(value)!;
  }
}
