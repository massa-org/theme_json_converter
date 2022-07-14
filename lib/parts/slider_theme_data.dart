part of theme_json_converter;

class NullableSliderThemeDataConverter
    extends JsonConverter<SliderThemeData?, Map<String, dynamic>?> {
  const NullableSliderThemeDataConverter();

  @override
  SliderThemeData? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return SliderThemeData(
      activeTickMarkColor: const NullableColorConverter().fromJson(
        json['activeTickMarkColor'],
      ),
      activeTrackColor: const NullableColorConverter().fromJson(
        json['activeTrackColor'],
      ),
      disabledActiveTickMarkColor: const NullableColorConverter().fromJson(
        json['disabledActiveTickMarkColor'],
      ),
      disabledActiveTrackColor: const NullableColorConverter().fromJson(
        json['disabledActiveTrackColor'],
      ),
      disabledInactiveTickMarkColor: const NullableColorConverter().fromJson(
        json['disabledInactiveTickMarkColor'],
      ),
      disabledInactiveTrackColor: const NullableColorConverter().fromJson(
        json['disabledInactiveTrackColor'],
      ),
      disabledThumbColor: const NullableColorConverter().fromJson(
        json['disabledThumbColor'],
      ),
      inactiveTickMarkColor: const NullableColorConverter().fromJson(
        json['inactiveTickMarkColor'],
      ),
      inactiveTrackColor: const NullableColorConverter().fromJson(
        json['inactiveTrackColor'],
      ),
      minThumbSeparation: (json['minThumbSeparation'] as num?)?.toDouble(),
      overlappingShapeStrokeColor: const NullableColorConverter().fromJson(
        json['overlappingShapeStrokeColor'],
      ),
      overlayColor: const NullableColorConverter().fromJson(
        json['overlayColor'],
      ),
      overlayShape: const NullableSliderComponentShapeConverter().fromJson(
        json['overlayShape'],
      ),
      rangeThumbShape: const NullableRangeSliderThumbShapeConverter().fromJson(
        json['rangeThumbShape'],
      ),
      rangeTickMarkShape:
          const NullableRangeSliderTickMarkShapeConverter().fromJson(
        json['rangeTickMarkShape'],
      ),
      rangeTrackShape: const NullableRangeSliderTrackShapeConverter().fromJson(
        json['rangeTrackShape'],
      ),
      rangeValueIndicatorShape:
          const NullableRangeSliderValueIndicatorShapeConverter().fromJson(
        json['rangeValueIndicatorShape'],
      ),
      showValueIndicator: const NullableShowValueIndicatorConverter().fromJson(
        json['showValueIndicator'],
      ),
      thumbColor: const NullableColorConverter().fromJson(
        json['thumbColor'],
      ),
      // @unencodable
      // thumbSelector
      thumbShape: const NullableSliderComponentShapeConverter().fromJson(
        json['thumbShape'],
      ),
      tickMarkShape: const NullableSliderTickMarkShapeConverter().fromJson(
        json['tickMarkShape'],
      ),
      trackHeight: (json['trackHeight'] as num?)?.toDouble(),
      trackShape: const NullableSliderTrackShapeConverter().fromJson(
        json['trackShape'],
      ),
      valueIndicatorColor: const NullableColorConverter().fromJson(
        json['valueIndicatorColor'],
      ),
      valueIndicatorShape:
          const NullableSliderComponentShapeConverter().fromJson(
        json['valueIndicatorShape'],
      ),
      valueIndicatorTextStyle: const NullableTextStyleConverter().fromJson(
        json['jsonIndicatorTextStyle'],
      ),
    );
  }

  @override
  Map<String, dynamic>? toJson(SliderThemeData? object) {
    if (object == null) return null;

    return <String, dynamic>{
      'activeTickMarkColor':
          const NullableColorConverter().toJson(object.activeTickMarkColor),
      'activeTrackColor':
          const NullableColorConverter().toJson(object.activeTrackColor),
      'disabledActiveTickMarkColor': const NullableColorConverter().toJson(
        object.disabledActiveTickMarkColor,
      ),
      'disabledActiveTrackColor': const NullableColorConverter()
          .toJson(object.disabledActiveTrackColor),
      'disabledInactiveTickMarkColor': const NullableColorConverter().toJson(
        object.disabledInactiveTickMarkColor,
      ),
      'disabledInactiveTrackColor': const NullableColorConverter()
          .toJson(object.disabledInactiveTrackColor),
      'disabledThumbColor':
          const NullableColorConverter().toJson(object.disabledThumbColor),
      'inactiveTickMarkColor':
          const NullableColorConverter().toJson(object.inactiveTickMarkColor),
      'inactiveTrackColor':
          const NullableColorConverter().toJson(object.inactiveTrackColor),
      'minThumbSeparation': (object.minThumbSeparation),
      'overlappingShapeStrokeColor': const NullableColorConverter().toJson(
        object.overlappingShapeStrokeColor,
      ),
      'overlayColor':
          const NullableColorConverter().toJson(object.overlayColor),
      'overlayShape': const NullableSliderComponentShapeConverter()
          .toJson(object.overlayShape),
      'rangeThumbShape': const NullableRangeSliderThumbShapeConverter()
          .toJson(object.rangeThumbShape as RoundRangeSliderThumbShape?),
      'rangeTickMarkShape':
          const NullableRangeSliderTickMarkShapeConverter().toJson(
        object.rangeTickMarkShape,
      ),
      'rangeTrackShape': const NullableRangeSliderTrackShapeConverter()
          .toJson(object.rangeTrackShape),
      'rangeValueIndicatorShape':
          const NullableRangeSliderValueIndicatorShapeConverter().toJson(
        object.rangeValueIndicatorShape,
      ),
      'showValueIndicator': const NullableShowValueIndicatorConverter().toJson(
        object.showValueIndicator,
      ),
      'thumbColor': const NullableColorConverter().toJson(object.thumbColor),
      'thumbShape': const NullableSliderComponentShapeConverter()
          .toJson(object.thumbShape),
      'tickMarkShape': const NullableSliderTickMarkShapeConverter()
          .toJson(object.tickMarkShape),
      'trackHeight': object.trackHeight,
      'trackShape':
          const NullableSliderTrackShapeConverter().toJson(object.trackShape),
      'valueIndicatorColor':
          const NullableColorConverter().toJson(object.valueIndicatorColor),
      'valueIndicatorShape':
          const NullableSliderComponentShapeConverter().toJson(
        object.valueIndicatorShape,
      ),
      'valueIndicatorTextStyle': const NullableTextStyleConverter().toJson(
        object.valueIndicatorTextStyle,
      ),
    };
  }
}

class SliderThemeDataConverter
    extends JsonConverter<SliderThemeData, Map<String, dynamic>> {
  const SliderThemeDataConverter();

  @override
  SliderThemeData fromJson(Map<String, dynamic> json) {
    return const NullableSliderThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(SliderThemeData object) {
    return const NullableSliderThemeDataConverter().toJson(object)!;
  }
}
