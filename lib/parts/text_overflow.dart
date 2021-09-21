part of theme_json_converter;

class NullableTextOverflowConverter
    extends JsonConverter<TextOverflow?, String?> {
  const NullableTextOverflowConverter();

  @override
  TextOverflow? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'clip':
        return TextOverflow.clip;

      case 'ellipsis':
        return TextOverflow.ellipsis;

      case 'fade':
        return TextOverflow.fade;

      case 'visible':
        return TextOverflow.visible;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(TextOverflow? value) {
    if (value == null) return null;

    switch (value) {
      case TextOverflow.clip:
        return 'clip';
        break;

      case TextOverflow.ellipsis:
        return 'ellipsis';
        break;

      case TextOverflow.fade:
        return 'fade';
        break;

      case TextOverflow.visible:
        return 'visible';
        break;
    }

    throw 'Json_Unsuported_Value';
  }
}

class TextOverflowConverter extends JsonConverter<TextOverflow, String> {
  const TextOverflowConverter();

  @override
  TextOverflow fromJson(String json) {
    return const NullableTextOverflowConverter().fromJson(json)!;
  }

  @override
  String toJson(TextOverflow value) {
    return const NullableTextOverflowConverter().toJson(value)!;
  }
}
