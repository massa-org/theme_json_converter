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
  String? toJson(TextDecoration? object) {
    if (object == null) return null;

    if (object == TextDecoration.lineThrough) {
      return 'lineThrough';
    } else if (object == TextDecoration.none) {
      return 'none';
    } else if (object == TextDecoration.overline) {
      return 'overline';
    } else if (object == TextDecoration.underline) {
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
  String toJson(TextDecoration object) {
    return const NullableTextDecorationConverter().toJson(object)!;
  }
}
