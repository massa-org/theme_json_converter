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
  String? toJson(TextInputType? object) {
    if (object == null) return null;

    if (object.index == TextInputType.datetime.index) {
      return 'datetime';
    } else if (object.index == TextInputType.emailAddress.index) {
      return 'emailAddress';
    } else if (object.index == TextInputType.multiline.index) {
      return 'multiline';
    } else if (object.index == TextInputType.name.index) {
      return 'name';
    } else if (object.index == TextInputType.number.index) {
      return 'number';
    } else if (object.index == TextInputType.phone.index) {
      return 'phone';
    } else if (object.index == TextInputType.streetAddress.index) {
      return 'streetAddress';
    } else if (object.index == TextInputType.text.index) {
      return 'text';
    } else if (object.index == TextInputType.url.index) {
      return 'url';
    } else if (object.index == TextInputType.visiblePassword.index) {
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
  String toJson(TextInputType object) {
    return const NullableTextInputTypeConverter().toJson(object)!;
  }
}
