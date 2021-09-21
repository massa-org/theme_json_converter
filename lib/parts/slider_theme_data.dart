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
  Map<String, dynamic>? toJson(SliderThemeData? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'activeTickMarkColor':
          const NullableColorConverter().toJson(value.activeTickMarkColor),
      'activeTrackColor':
          const NullableColorConverter().toJson(value.activeTrackColor),
      'disabledActiveTickMarkColor': const NullableColorConverter().toJson(
        value.disabledActiveTickMarkColor,
      ),
      'disabledActiveTrackColor':
          const NullableColorConverter().toJson(value.disabledActiveTrackColor),
      'disabledInactiveTickMarkColor': const NullableColorConverter().toJson(
        value.disabledInactiveTickMarkColor,
      ),
      'disabledInactiveTrackColor': const NullableColorConverter()
          .toJson(value.disabledInactiveTrackColor),
      'disabledThumbColor':
          const NullableColorConverter().toJson(value.disabledThumbColor),
      'inactiveTickMarkColor':
          const NullableColorConverter().toJson(value.inactiveTickMarkColor),
      'inactiveTrackColor':
          const NullableColorConverter().toJson(value.inactiveTrackColor),
      'minThumbSeparation': (value.minThumbSeparation),
      'overlappingShapeStrokeColor': const NullableColorConverter().toJson(
        value.overlappingShapeStrokeColor,
      ),
      'overlayColor': const NullableColorConverter().toJson(value.overlayColor),
      'overlayShape': const NullableSliderComponentShapeConverter()
          .toJson(value.overlayShape),
      'rangeThumbShape': const NullableRangeSliderThumbShapeConverter()
          .toJson(value.rangeThumbShape as RoundRangeSliderThumbShape?),
      'rangeTickMarkShape':
          const NullableRangeSliderTickMarkShapeConverter().toJson(
        value.rangeTickMarkShape,
      ),
      'rangeTrackShape': const NullableRangeSliderTrackShapeConverter()
          .toJson(value.rangeTrackShape),
      'rangeValueIndicatorShape':
          const NullableRangeSliderValueIndicatorShapeConverter().toJson(
        value.rangeValueIndicatorShape,
      ),
      'showValueIndicator': const NullableShowValueIndicatorConverter().toJson(
        value.showValueIndicator,
      ),
      'thumbColor': const NullableColorConverter().toJson(value.thumbColor),
      'thumbShape': const NullableSliderComponentShapeConverter()
          .toJson(value.thumbShape),
      'tickMarkShape': const NullableSliderTickMarkShapeConverter()
          .toJson(value.tickMarkShape),
      'trackHeight': value.trackHeight,
      'trackShape':
          const NullableSliderTrackShapeConverter().toJson(value.trackShape),
      'valueIndicatorColor':
          const NullableColorConverter().toJson(value.valueIndicatorColor),
      'valueIndicatorShape':
          const NullableSliderComponentShapeConverter().toJson(
        value.valueIndicatorShape,
      ),
      'valueIndicatorTextStyle': const NullableTextStyleConverter().toJson(
        value.valueIndicatorTextStyle,
      ),
    };

    throw 'Json_Unsuported_Value';
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
  Map<String, dynamic> toJson(SliderThemeData value) {
    return const NullableSliderThemeDataConverter().toJson(value)!;
  }
}
