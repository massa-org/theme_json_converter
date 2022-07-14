part of theme_json_converter;

class NullableRangeSliderValueIndicatorShapeConverter
    extends JsonConverter<RangeSliderValueIndicatorShape?, String?> {
  const NullableRangeSliderValueIndicatorShapeConverter();

  @override
  RangeSliderValueIndicatorShape? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'paddle':
        return const PaddleRangeSliderValueIndicatorShape();

      case 'rectangular':
        return const RectangularRangeSliderValueIndicatorShape();
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(RangeSliderValueIndicatorShape? object) {
    if (object == null) return null;

    if (object is PaddleRangeSliderValueIndicatorShape) {
      return 'paddle';
    } else if (object is RectangularRangeSliderValueIndicatorShape) {
      return 'rectangular';
    }

    throw 'Json_Unsuported_Value';
  }
}

class RangeSliderValueIndicatorShapeConverter
    extends JsonConverter<RangeSliderValueIndicatorShape, String> {
  const RangeSliderValueIndicatorShapeConverter();

  @override
  RangeSliderValueIndicatorShape fromJson(String json) {
    return const NullableRangeSliderValueIndicatorShapeConverter()
        .fromJson(json)!;
  }

  @override
  String toJson(RangeSliderValueIndicatorShape object) {
    return const NullableRangeSliderValueIndicatorShapeConverter()
        .toJson(object)!;
  }
}
