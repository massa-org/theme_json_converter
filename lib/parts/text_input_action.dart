part of theme_json_converter;

class NullableTextInputActionConverter
    extends JsonConverter<TextInputAction?, String?> {
  const NullableTextInputActionConverter();

  @override
  TextInputAction? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'continueAction':
        return TextInputAction.continueAction;

      case 'done':
        return TextInputAction.done;

      case 'emergencyCall':
        return TextInputAction.emergencyCall;

      case 'go':
        return TextInputAction.go;

      case 'join':
        return TextInputAction.join;

      case 'newline':
        return TextInputAction.newline;

      case 'next':
        return TextInputAction.next;

      case 'none':
        return TextInputAction.none;

      case 'previous':
        return TextInputAction.previous;

      case 'route':
        return TextInputAction.route;

      case 'search':
        return TextInputAction.search;

      case 'send':
        return TextInputAction.send;

      case 'unspecified':
        return TextInputAction.unspecified;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(TextInputAction? value) {
    if (value == null) return null;

    switch (value) {
      case TextInputAction.continueAction:
        return 'continueAction';
        break;

      case TextInputAction.done:
        return 'done';
        break;

      case TextInputAction.emergencyCall:
        return 'emergencyCall';
        break;

      case TextInputAction.go:
        return 'go';
        break;

      case TextInputAction.join:
        return 'join';
        break;

      case TextInputAction.newline:
        return 'newline';
        break;

      case TextInputAction.next:
        return 'next';
        break;

      case TextInputAction.none:
        return 'none';
        break;

      case TextInputAction.previous:
        return 'previous';
        break;

      case TextInputAction.route:
        return 'route';
        break;

      case TextInputAction.search:
        return 'search';
        break;

      case TextInputAction.send:
        return 'send';
        break;

      case TextInputAction.unspecified:
        return 'unspecified';
        break;
    }

    throw 'Json_Unsuported_Value';
  }
}

class TextInputActionConverter extends JsonConverter<TextInputAction, String> {
  const TextInputActionConverter();

  @override
  TextInputAction fromJson(String json) {
    return const NullableTextInputActionConverter().fromJson(json)!;
  }

  @override
  String toJson(TextInputAction value) {
    return const NullableTextInputActionConverter().toJson(value)!;
  }
}
