part of theme_json_converter;

class NullableTextDirectionConverter
    extends JsonConverter<TextDirection?, String?> {
  const NullableTextDirectionConverter();

  @override
  TextDirection? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'ltr':
        return TextDirection.ltr;

      case 'rtl':
        return TextDirection.rtl;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(TextDirection? object) {
    if (object == null) return null;

    switch (object) {
      case TextDirection.ltr:
        return 'ltr';

      case TextDirection.rtl:
        return 'rtl';
    }
  }
}

class TextDirectionConverter extends JsonConverter<TextDirection, String> {
  const TextDirectionConverter();

  @override
  TextDirection fromJson(String json) {
    return const NullableTextDirectionConverter().fromJson(json)!;
  }

  @override
  String toJson(TextDirection object) {
    return const NullableTextDirectionConverter().toJson(object)!;
  }
}
