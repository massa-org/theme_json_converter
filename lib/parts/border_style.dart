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
  String? toJson(BorderStyle? object) {
    if (object == null) return null;

    switch (object) {
      case BorderStyle.none:
        return 'none';

      case BorderStyle.solid:
        return 'solid';
    }
  }
}

class BorderStyleConverter extends JsonConverter<BorderStyle, String> {
  const BorderStyleConverter();

  @override
  BorderStyle fromJson(String json) {
    return const NullableBorderStyleConverter().fromJson(json)!;
  }

  @override
  String toJson(BorderStyle object) {
    return const NullableBorderStyleConverter().toJson(object)!;
  }
}
