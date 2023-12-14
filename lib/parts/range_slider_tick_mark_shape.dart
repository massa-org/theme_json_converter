part of theme_json_converter;

class NullableRangeSliderTickMarkShapeConverter
    extends JsonConverter<RangeSliderTickMarkShape?, dynamic> {
  const NullableRangeSliderTickMarkShapeConverter();

  @override
  RangeSliderTickMarkShape? fromJson(json) =>
      const TypedNullableRangeSliderTickMarkShapeConverter()
          .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableRangeSliderTickMarkShapeConverter().toJson(object);
}

class TypedNullableRangeSliderTickMarkShapeConverter
    extends JsonConverter<RangeSliderTickMarkShape?, Map<String, dynamic>?> {
  const TypedNullableRangeSliderTickMarkShapeConverter();
  @override
  RangeSliderTickMarkShape? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    String? type = json['type'];

    switch (type) {
      case 'round':
        return RoundRangeSliderTickMarkShape(
          tickMarkRadius: (json['tickMarkRadius'] as num?)?.toDouble(),
        );
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  Map<String, dynamic>? toJson(RangeSliderTickMarkShape? value) {
    if (value == null) return null;

    var shape = value as RoundRangeSliderTickMarkShape;
    return <String, dynamic>{
      'tickMarkRadius': shape.tickMarkRadius,
      'type': 'round',
    };

    throw 'Json_Unsuported_Value';
  }
}

class RangeSliderTickMarkShapeConverter
    extends JsonConverter<RangeSliderTickMarkShape, dynamic> {
  const RangeSliderTickMarkShapeConverter();

  @override
  RangeSliderTickMarkShape fromJson(json) =>
      const TypedRangeSliderTickMarkShapeConverter()
          .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) =>
      const TypedRangeSliderTickMarkShapeConverter().toJson(object);
}

class TypedRangeSliderTickMarkShapeConverter
    extends JsonConverter<RangeSliderTickMarkShape, Map<String, dynamic>> {
  const TypedRangeSliderTickMarkShapeConverter();
  @override
  RangeSliderTickMarkShape fromJson(Map<String, dynamic> json) {
    return const NullableRangeSliderTickMarkShapeConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(RangeSliderTickMarkShape value) {
    return const NullableRangeSliderTickMarkShapeConverter().toJson(value)!;
  }
}
