part of theme_json_converter;

class NullableTextAlignConverter extends JsonConverter<TextAlign?, String?> {
  const NullableTextAlignConverter();

  @override
  TextAlign? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'center':
        return TextAlign.center;

      case 'end':
        return TextAlign.end;

      case 'justify':
        return TextAlign.justify;

      case 'left':
        return TextAlign.left;

      case 'right':
        return TextAlign.right;

      case 'start':
        return TextAlign.start;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(TextAlign? value) {
    if (value == null) return null;

    switch (value) {
      case TextAlign.center:
        return 'center';
        break;
      case TextAlign.end:
        return 'end';
        break;
      case TextAlign.justify:
        return 'justify';
        break;
      case TextAlign.left:
        return 'left';
        break;
      case TextAlign.right:
        return 'right';
        break;
      case TextAlign.start:
        return 'start';
        break;
    }

    throw 'Json_Unsuported_Value';
  }
}

class TextAlignConverter extends JsonConverter<TextAlign, String> {
  const TextAlignConverter();

  @override
  TextAlign fromJson(String json) {
    return const NullableTextAlignConverter().fromJson(json)!;
  }

  @override
  String toJson(TextAlign value) {
    return const NullableTextAlignConverter().toJson(value)!;
  }
}
