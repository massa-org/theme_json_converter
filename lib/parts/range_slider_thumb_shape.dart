part of theme_json_converter;

class NullableRangeSliderThumbShapeConverter
    extends JsonConverter<RangeSliderThumbShape?, Map<String, dynamic>?> {
  const NullableRangeSliderThumbShapeConverter();

  @override
  RangeSliderThumbShape? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    String? type = json['type'];
    switch (type) {
      case 'round':
        return RoundRangeSliderThumbShape(
          disabledThumbRadius:
              (json['disabledThumbRadius'] as num?)?.toDouble(),
          elevation: ((json['elevation'] ?? 1.0) as num).toDouble(),
          enabledThumbRadius:
              ((json['enabledThumbRadius'] ?? 10.0) as num).toDouble(),
          pressedElevation:
              ((json['pressedElevation'] ?? 6.0) as num).toDouble(),
        );
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  Map<String, dynamic>? toJson(RangeSliderThumbShape? object) {
    if (object == null) return null;

    if (object is RoundRangeSliderThumbShape) {
      return <String, dynamic>{
        'disabledThumbRadius': object.disabledThumbRadius,
        'elevation': object.elevation,
        'enabledThumbRadius': object.enabledThumbRadius,
        'pressedElevation': object.pressedElevation,
        'type': 'round',
      };
    }

    throw 'Json_Unsuported_Value';
  }
}

class RangeSliderThumbShapeConverter
    extends JsonConverter<RangeSliderThumbShape, Map<String, dynamic>> {
  const RangeSliderThumbShapeConverter();

  @override
  RangeSliderThumbShape fromJson(Map<String, dynamic> json) {
    return const NullableRangeSliderThumbShapeConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(RangeSliderThumbShape object) {
    return const NullableRangeSliderThumbShapeConverter().toJson(object)!;
  }
}
