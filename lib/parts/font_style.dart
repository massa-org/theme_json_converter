part of theme_json_converter;

class NullableFontStyleConverter extends JsonConverter<FontStyle?, String?> {
  const NullableFontStyleConverter();

  @override
  FontStyle? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'italic':
        return FontStyle.italic;

      case 'normal':
        return FontStyle.normal;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(FontStyle? value) {
    if (value == null) return null;

    switch (value) {
      case FontStyle.italic:
        return 'italic';
        break;

      case FontStyle.normal:
        return 'normal';
        break;
    }

    throw 'Json_Unsuported_Value';
  }
}

class FontStyleConverter extends JsonConverter<FontStyle, String> {
  const FontStyleConverter();

  @override
  FontStyle fromJson(String json) {
    return const NullableFontStyleConverter().fromJson(json)!;
  }

  @override
  String toJson(FontStyle value) {
    return const NullableFontStyleConverter().toJson(value)!;
  }
}
