part of theme_json_converter;

class NullableTextAlignVerticalConverter
    extends JsonConverter<TextAlignVertical?, String?> {
  const NullableTextAlignVerticalConverter();

  @override
  TextAlignVertical? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'bottom':
        return TextAlignVertical.bottom;

      case 'center':
        return TextAlignVertical.center;

      case 'top':
        return TextAlignVertical.top;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(TextAlignVertical? value) {
    if (value == null) return null;

    switch (value) {
      case TextAlignVertical.bottom:
        return 'bottom';
        break;
      case TextAlignVertical.center:
        return 'center';
        break;
      case TextAlignVertical.top:
        return 'top';
        break;
    }

    throw 'Json_Unsuported_Value';
  }
}

class TextAlignVerticalConverter
    extends JsonConverter<TextAlignVertical, String> {
  const TextAlignVerticalConverter();

  @override
  TextAlignVertical fromJson(String json) {
    return const NullableTextAlignVerticalConverter().fromJson(json)!;
  }

  @override
  String toJson(TextAlignVertical value) {
    return const NullableTextAlignVerticalConverter().toJson(value)!;
  }
}
