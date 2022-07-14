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
  String? toJson(FlexFit? object) {
    if (object == null) return null;

    switch (object) {
      case FlexFit.loose:
        return 'loose';

      case FlexFit.tight:
        return 'tight';
    }
  }
}

class FlexFitConverter extends JsonConverter<FlexFit, String> {
  const FlexFitConverter();

  @override
  FlexFit fromJson(String json) {
    return const NullableFlexFitConverter().fromJson(json)!;
  }

  @override
  String toJson(FlexFit object) {
    return const NullableFlexFitConverter().toJson(object)!;
  }
}
