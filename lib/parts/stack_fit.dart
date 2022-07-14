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
  String? toJson(StackFit? object) {
    if (object == null) return null;

    switch (object) {
      case StackFit.expand:
        return 'expand';

      case StackFit.loose:
        return 'loose';

      case StackFit.passthrough:
        return 'passthrough';
    }
  }
}

class StackFitConverter extends JsonConverter<StackFit, String> {
  const StackFitConverter();

  @override
  StackFit fromJson(String json) {
    return const NullableStackFitConverter().fromJson(json)!;
  }

  @override
  String toJson(StackFit object) {
    return const NullableStackFitConverter().toJson(object)!;
  }
}
