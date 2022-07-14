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
  String? toJson(FontStyle? object) {
    if (object == null) return null;

    switch (object) {
      case FontStyle.italic:
        return 'italic';

      case FontStyle.normal:
        return 'normal';
    }
  }
}

class FontStyleConverter extends JsonConverter<FontStyle, String> {
  const FontStyleConverter();

  @override
  FontStyle fromJson(String json) {
    return const NullableFontStyleConverter().fromJson(json)!;
  }

  @override
  String toJson(FontStyle object) {
    return const NullableFontStyleConverter().toJson(object)!;
  }
}
