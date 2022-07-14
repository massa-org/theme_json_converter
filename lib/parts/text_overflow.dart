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
  String? toJson(TextOverflow? object) {
    if (object == null) return null;

    switch (object) {
      case TextOverflow.clip:
        return 'clip';

      case TextOverflow.ellipsis:
        return 'ellipsis';

      case TextOverflow.fade:
        return 'fade';

      case TextOverflow.visible:
        return 'visible';
    }
  }
}

class TextOverflowConverter extends JsonConverter<TextOverflow, String> {
  const TextOverflowConverter();

  @override
  TextOverflow fromJson(String json) {
    return const NullableTextOverflowConverter().fromJson(json)!;
  }

  @override
  String toJson(TextOverflow object) {
    return const NullableTextOverflowConverter().toJson(object)!;
  }
}
