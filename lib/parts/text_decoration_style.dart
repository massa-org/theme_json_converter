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
  String? toJson(TextDecorationStyle? object) {
    if (object == null) return null;

    switch (object) {
      case TextDecorationStyle.dashed:
        return 'dashed';

      case TextDecorationStyle.dotted:
        return 'dotted';

      case TextDecorationStyle.double:
        return 'double';

      case TextDecorationStyle.solid:
        return 'solid';

      case TextDecorationStyle.wavy:
        return 'wavy';
    }
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
  String toJson(TextDecorationStyle object) {
    return const NullableTextDecorationStyleConverter().toJson(object)!;
  }
}
