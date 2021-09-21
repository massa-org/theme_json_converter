part of theme_json_converter;

class NullableBorderStyleConverter
    extends JsonConverter<BorderStyle?, String?> {
  const NullableBorderStyleConverter();

  @override
  BorderStyle? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'none':
        return BorderStyle.none;

      case 'solid':
        return BorderStyle.solid;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(BorderStyle? value) {
    if (value == null) return null;

    switch (value) {
      case BorderStyle.none:
        return 'none';
        break;

      case BorderStyle.solid:
        return 'solid';
        break;
    }

    throw 'Json_Unsuported_Value';
  }
}

class BorderStyleConverter extends JsonConverter<BorderStyle, String> {
  const BorderStyleConverter();

  @override
  BorderStyle fromJson(String json) {
    return const NullableBorderStyleConverter().fromJson(json)!;
  }

  @override
  String toJson(BorderStyle value) {
    return const NullableBorderStyleConverter().toJson(value)!;
  }
}
