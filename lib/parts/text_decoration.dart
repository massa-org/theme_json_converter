part of theme_json_converter;

class NullableTextDecorationConverter
    extends JsonConverter<TextDecoration?, String?> {
  const NullableTextDecorationConverter();

  @override
  TextDecoration? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'lineThrough':
        return TextDecoration.lineThrough;

      case 'none':
        return TextDecoration.none;

      case 'overline':
        return TextDecoration.overline;

      case 'underline':
        return TextDecoration.underline;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(TextDecoration? value) {
    if (value == null) return null;

    if (value == TextDecoration.lineThrough) {
      return 'lineThrough';
    } else if (value == TextDecoration.none) {
      return 'none';
    } else if (value == TextDecoration.overline) {
      return 'overline';
    } else if (value == TextDecoration.underline) {
      return 'underline';
    }

    throw 'Json_Unsuported_Value';
  }
}

class TextDecorationConverter extends JsonConverter<TextDecoration, String> {
  const TextDecorationConverter();

  @override
  TextDecoration fromJson(String json) {
    return const NullableTextDecorationConverter().fromJson(json)!;
  }

  @override
  String toJson(TextDecoration value) {
    return const NullableTextDecorationConverter().toJson(value)!;
  }
}
