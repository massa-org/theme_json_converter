part of theme_json_converter;

class NullableStackFitConverter extends JsonConverter<StackFit?, String?> {
  const NullableStackFitConverter();

  @override
  StackFit? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'expand':
        return StackFit.expand;

      case 'loose':
        return StackFit.loose;

      case 'passthrough':
        return StackFit.passthrough;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(StackFit? value) {
    if (value == null) return null;

    switch (value) {
      case StackFit.expand:
        return 'expand';
        break;

      case StackFit.loose:
        return 'loose';
        break;

      case StackFit.passthrough:
        return 'passthrough';
        break;
    }

    throw 'Json_Unsuported_Value';
  }
}

class StackFitConverter extends JsonConverter<StackFit, String> {
  const StackFitConverter();

  @override
  StackFit fromJson(String json) {
    return const NullableStackFitConverter().fromJson(json)!;
  }

  @override
  String toJson(StackFit value) {
    return const NullableStackFitConverter().toJson(value)!;
  }
}
