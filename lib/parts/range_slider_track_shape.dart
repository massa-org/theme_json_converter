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
  String? toJson(RangeSliderTrackShape? object) {
    if (object == null) return null;

    if (object is RectangularRangeSliderTrackShape) {
      return 'rectangular';
    } else if (object is RoundedRectRangeSliderTrackShape) {
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
  String toJson(RangeSliderTrackShape object) {
    return const NullableRangeSliderTrackShapeConverter().toJson(object)!;
  }
}
