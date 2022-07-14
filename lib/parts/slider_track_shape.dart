part of theme_json_converter;

class NullableSliderTrackShapeConverter
    extends JsonConverter<SliderTrackShape?, Map<String, dynamic>?> {
  const NullableSliderTrackShapeConverter();

  @override
  SliderTrackShape? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    String? type = json['type'];
    switch (type) {
      case 'rectangular':
        return const RectangularSliderTrackShape();

      case 'rounded':
        return const RoundedRectSliderTrackShape();
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  Map<String, dynamic>? toJson(SliderTrackShape? object) {
    if (object == null) return null;

    if (object is RectangularSliderTrackShape) {
      return <String, dynamic>{
        'type': 'rectangular',
      };
    } else if (object is RoundedRectSliderTrackShape) {
      return <String, dynamic>{
        'type': 'rounded',
      };
    }

    throw 'Json_Unsuported_Value';
  }
}

class SliderTrackShapeConverter
    extends JsonConverter<SliderTrackShape, Map<String, dynamic>> {
  const SliderTrackShapeConverter();

  @override
  SliderTrackShape fromJson(Map<String, dynamic> json) {
    return const NullableSliderTrackShapeConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(SliderTrackShape object) {
    return const NullableSliderTrackShapeConverter().toJson(object)!;
  }
}
