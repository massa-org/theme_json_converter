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
  String? toJson(TextInputAction? object) {
    if (object == null) return null;

    switch (object) {
      case TextInputAction.continueAction:
        return 'continueAction';

      case TextInputAction.done:
        return 'done';

      case TextInputAction.emergencyCall:
        return 'emergencyCall';

      case TextInputAction.go:
        return 'go';

      case TextInputAction.join:
        return 'join';

      case TextInputAction.newline:
        return 'newline';

      case TextInputAction.next:
        return 'next';

      case TextInputAction.none:
        return 'none';

      case TextInputAction.previous:
        return 'previous';

      case TextInputAction.route:
        return 'route';

      case TextInputAction.search:
        return 'search';

      case TextInputAction.send:
        return 'send';

      case TextInputAction.unspecified:
        return 'unspecified';
    }
  }
}

class TextInputActionConverter extends JsonConverter<TextInputAction, String> {
  const TextInputActionConverter();

  @override
  TextInputAction fromJson(String json) {
    return const NullableTextInputActionConverter().fromJson(json)!;
  }

  @override
  String toJson(TextInputAction object) {
    return const NullableTextInputActionConverter().toJson(object)!;
  }
}
