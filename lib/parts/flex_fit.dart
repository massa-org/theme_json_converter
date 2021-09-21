part of theme_json_converter;

class NullableFlexFitConverter extends JsonConverter<FlexFit?, String?> {
  const NullableFlexFitConverter();

  @override
  FlexFit? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'loose':
        return FlexFit.loose;

      case 'tight':
        return FlexFit.tight;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(FlexFit? value) {
    if (value == null) return null;

    switch (value) {
      case FlexFit.loose:
        return 'loose';
        break;

      case FlexFit.tight:
        return 'tight';
        break;
    }

    throw 'Json_Unsuported_Value';
  }
}

class FlexFitConverter extends JsonConverter<FlexFit, String> {
  const FlexFitConverter();

  @override
  FlexFit fromJson(String json) {
    return const NullableFlexFitConverter().fromJson(json)!;
  }

  @override
  String toJson(FlexFit value) {
    return const NullableFlexFitConverter().toJson(value)!;
  }
}
