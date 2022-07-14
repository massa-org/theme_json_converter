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
  String? toJson(TextAlign? object) {
    if (object == null) return null;

    switch (object) {
      case TextAlign.center:
        return 'center';
      case TextAlign.end:
        return 'end';
      case TextAlign.justify:
        return 'justify';
      case TextAlign.left:
        return 'left';
      case TextAlign.right:
        return 'right';
      case TextAlign.start:
        return 'start';
    }
  }
}

class TextAlignConverter extends JsonConverter<TextAlign, String> {
  const TextAlignConverter();

  @override
  TextAlign fromJson(String json) {
    return const NullableTextAlignConverter().fromJson(json)!;
  }

  @override
  String toJson(TextAlign object) {
    return const NullableTextAlignConverter().toJson(object)!;
  }
}
