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
  String? toJson(RangeSliderValueIndicatorShape? value) {
    if (value == null) return null;

    if (value is PaddleRangeSliderValueIndicatorShape) {
      return 'paddle';
    } else if (value is RectangularRangeSliderValueIndicatorShape) {
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
  String toJson(RangeSliderValueIndicatorShape value) {
    return const NullableRangeSliderValueIndicatorShapeConverter()
        .toJson(value)!;
  }
}
