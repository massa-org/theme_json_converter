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
  String? toJson(SliderTickMarkShape? object) {
    if (object == null) return null;

    if (object == SliderTickMarkShape.noTickMark) {
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
  String toJson(SliderTickMarkShape object) {
    return const NullableSliderTickMarkShapeConverter().toJson(object)!;
  }
}
