part of theme_json_converter;

class NullableRangeSliderTickMarkShapeConverter
    extends JsonConverter<RangeSliderTickMarkShape?, Map<String, dynamic>?> {
  const NullableRangeSliderTickMarkShapeConverter();

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
    extends JsonConverter<RangeSliderTickMarkShape, Map<String, dynamic>> {
  const RangeSliderTickMarkShapeConverter();

  @override
  RangeSliderTickMarkShape fromJson(Map<String, dynamic> json) {
    return const NullableRangeSliderTickMarkShapeConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(RangeSliderTickMarkShape value) {
    return const NullableRangeSliderTickMarkShapeConverter().toJson(value)!;
  }
}
