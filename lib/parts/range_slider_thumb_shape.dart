part of theme_json_converter;

class NullableRangeSliderThumbShapeConverter
    extends JsonConverter<RangeSliderThumbShape?, dynamic> {
  const NullableRangeSliderThumbShapeConverter();

  @override
  RangeSliderThumbShape? fromJson(json) =>
      const TypedNullableRangeSliderThumbShapeConverter()
          .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableRangeSliderThumbShapeConverter().toJson(object);
}

class TypedNullableRangeSliderThumbShapeConverter
    extends JsonConverter<RangeSliderThumbShape?, Map<String, dynamic>?> {
  const TypedNullableRangeSliderThumbShapeConverter();
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
  Map<String, dynamic>? toJson(RangeSliderThumbShape? value) {
    if (value == null) return null;

    if (value is RoundRangeSliderThumbShape) {
      return <String, dynamic>{
        'disabledThumbRadius': value.disabledThumbRadius,
        'elevation': value.elevation,
        'enabledThumbRadius': value.enabledThumbRadius,
        'pressedElevation': value.pressedElevation,
        'type': 'round',
      };
    }

    throw 'Json_Unsuported_Value';
  }
}

class RangeSliderThumbShapeConverter
    extends JsonConverter<RangeSliderThumbShape, dynamic> {
  const RangeSliderThumbShapeConverter();

  @override
  RangeSliderThumbShape fromJson(json) =>
      const TypedRangeSliderThumbShapeConverter()
          .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) =>
      const TypedRangeSliderThumbShapeConverter().toJson(object);
}

class TypedRangeSliderThumbShapeConverter
    extends JsonConverter<RangeSliderThumbShape, Map<String, dynamic>> {
  const TypedRangeSliderThumbShapeConverter();
  @override
  RangeSliderThumbShape fromJson(Map<String, dynamic> json) {
    return const NullableRangeSliderThumbShapeConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(RangeSliderThumbShape value) {
    return const NullableRangeSliderThumbShapeConverter().toJson(value)!;
  }
}
