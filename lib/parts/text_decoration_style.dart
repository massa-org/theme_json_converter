part of theme_json_converter;

class NullableTextDecorationStyleConverter
    extends JsonConverter<TextDecorationStyle?, String?> {
  const NullableTextDecorationStyleConverter();

  @override
  TextDecorationStyle? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'dashed':
        return TextDecorationStyle.dashed;

      case 'dotted':
        return TextDecorationStyle.dotted;

      case 'double':
        return TextDecorationStyle.double;

      case 'solid':
        return TextDecorationStyle.solid;

      case 'wavy':
        return TextDecorationStyle.wavy;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(TextDecorationStyle? value) {
    if (value == null) return null;

    switch (value) {
      case TextDecorationStyle.dashed:
        return 'dashed';
        break;

      case TextDecorationStyle.dotted:
        return 'dotted';
        break;

      case TextDecorationStyle.double:
        return 'double';
        break;

      case TextDecorationStyle.solid:
        return 'solid';
        break;

      case TextDecorationStyle.wavy:
        return 'wavy';
        break;
    }

    throw 'Json_Unsuported_Value';
  }
}

class TextDecorationStyleConverter
    extends JsonConverter<TextDecorationStyle, String> {
  const TextDecorationStyleConverter();

  @override
  TextDecorationStyle fromJson(String json) {
    return const NullableTextDecorationStyleConverter().fromJson(json)!;
  }

  @override
  String toJson(TextDecorationStyle value) {
    return const NullableTextDecorationStyleConverter().toJson(value)!;
  }
}
