part of theme_json_converter;

class NullableSliderTickMarkShapeConverter
    extends JsonConverter<SliderTickMarkShape?, String?> {
  const NullableSliderTickMarkShapeConverter();

  @override
  SliderTickMarkShape? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'noTickMark':
        return SliderTickMarkShape.noTickMark;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(SliderTickMarkShape? value) {
    if (value == null) return null;

    String? result;

    if (value == SliderTickMarkShape.noTickMark) {
      return 'noTickMark';
    }

    throw 'Json_Unsuported_Value';
  }
}

class SliderTickMarkShapeConverter
    extends JsonConverter<SliderTickMarkShape, String> {
  const SliderTickMarkShapeConverter();

  @override
  SliderTickMarkShape fromJson(String json) {
    return const NullableSliderTickMarkShapeConverter().fromJson(json)!;
  }

  @override
  String toJson(SliderTickMarkShape value) {
    return const NullableSliderTickMarkShapeConverter().toJson(value)!;
  }
}
