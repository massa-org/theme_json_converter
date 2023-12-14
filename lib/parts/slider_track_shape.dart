part of theme_json_converter;

class NullableSliderTrackShapeConverter
    extends JsonConverter<SliderTrackShape?, dynamic> {
  const NullableSliderTrackShapeConverter();

  @override
  SliderTrackShape? fromJson(json) =>
      const TypedNullableSliderTrackShapeConverter()
          .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableSliderTrackShapeConverter().toJson(object);
}

class TypedNullableSliderTrackShapeConverter
    extends JsonConverter<SliderTrackShape?, Map<String, dynamic>?> {
  const TypedNullableSliderTrackShapeConverter();
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
  Map<String, dynamic>? toJson(SliderTrackShape? value) {
    if (value == null) return null;

    if (value is RectangularSliderTrackShape) {
      return <String, dynamic>{
        'type': 'rectangular',
      };
    } else if (value is RoundedRectSliderTrackShape) {
      return <String, dynamic>{
        'type': 'rounded',
      };
    }

    throw 'Json_Unsuported_Value';
  }
}

class SliderTrackShapeConverter
    extends JsonConverter<SliderTrackShape, dynamic> {
  const SliderTrackShapeConverter();

  @override
  SliderTrackShape fromJson(json) => const TypedSliderTrackShapeConverter()
      .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) =>
      const TypedSliderTrackShapeConverter().toJson(object);
}

class TypedSliderTrackShapeConverter
    extends JsonConverter<SliderTrackShape, Map<String, dynamic>> {
  const TypedSliderTrackShapeConverter();
  @override
  SliderTrackShape fromJson(Map<String, dynamic> json) {
    return const NullableSliderTrackShapeConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(SliderTrackShape value) {
    return const NullableSliderTrackShapeConverter().toJson(value)!;
  }
}
