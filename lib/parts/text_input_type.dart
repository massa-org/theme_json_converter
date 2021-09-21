part of theme_json_converter;

class NullableTextInputTypeConverter
    extends JsonConverter<TextInputType?, String?> {
  const NullableTextInputTypeConverter();

  @override
  TextInputType? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'datetime':
        return TextInputType.datetime;

      case 'emailAddress':
        return TextInputType.emailAddress;

      case 'multiline':
        return TextInputType.multiline;

      case 'name':
        return TextInputType.name;

      case 'number':
        return TextInputType.number;

      case 'phone':
        return TextInputType.phone;

      case 'streetAddress':
        return TextInputType.streetAddress;

      case 'text':
        return TextInputType.text;

      case 'url':
        return TextInputType.url;

      case 'visiblePassword':
        return TextInputType.visiblePassword;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(TextInputType? value) {
    if (value == null) return null;

    if (value.index == TextInputType.datetime.index) {
      return 'datetime';
    } else if (value.index == TextInputType.emailAddress.index) {
      return 'emailAddress';
    } else if (value.index == TextInputType.multiline.index) {
      return 'multiline';
    } else if (value.index == TextInputType.name.index) {
      return 'name';
    } else if (value.index == TextInputType.number.index) {
      return 'number';
    } else if (value.index == TextInputType.phone.index) {
      return 'phone';
    } else if (value.index == TextInputType.streetAddress.index) {
      return 'streetAddress';
    } else if (value.index == TextInputType.text.index) {
      return 'text';
    } else if (value.index == TextInputType.url.index) {
      return 'url';
    } else if (value.index == TextInputType.visiblePassword.index) {
      return 'visiblePassword';
    }

    throw 'Json_Unsuported_Value';
  }
}

class TextInputTypeConverter extends JsonConverter<TextInputType, String> {
  const TextInputTypeConverter();

  @override
  TextInputType fromJson(String json) {
    return const NullableTextInputTypeConverter().fromJson(json)!;
  }

  @override
  String toJson(TextInputType value) {
    return const NullableTextInputTypeConverter().toJson(value)!;
  }
}
