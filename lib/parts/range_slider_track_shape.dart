part of theme_json_converter;

class NullableRangeSliderTrackShapeConverter
    extends JsonConverter<RangeSliderTrackShape?, String?> {
  const NullableRangeSliderTrackShapeConverter();

  @override
  RangeSliderTrackShape? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'rectangular':
        return const RectangularRangeSliderTrackShape();

      case 'rounded':
        return const RoundedRectRangeSliderTrackShape();
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(RangeSliderTrackShape? value) {
    if (value == null) return null;

    if (value is RectangularRangeSliderTrackShape) {
      return 'rectangular';
    } else if (value is RoundedRectRangeSliderTrackShape) {
      return 'rounded';
    }

    throw 'Json_Unsuported_Value';
  }
}

class RangeSliderTrackShapeConverter
    extends JsonConverter<RangeSliderTrackShape, String> {
  const RangeSliderTrackShapeConverter();

  @override
  RangeSliderTrackShape fromJson(String json) {
    return const NullableRangeSliderTrackShapeConverter().fromJson(json)!;
  }

  @override
  String toJson(RangeSliderTrackShape value) {
    return const NullableRangeSliderTrackShapeConverter().toJson(value)!;
  }
}
