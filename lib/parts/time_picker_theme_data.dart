part of theme_json_converter;

class NullableTimePickerThemeDataConverter
    extends JsonConverter<TimePickerThemeData?, Map<String, dynamic>?> {
  const NullableTimePickerThemeDataConverter();

  @override
  TimePickerThemeData? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return TimePickerThemeData(
      backgroundColor:
          const NullableColorConverter().fromJson(json['backgroundColor']),
      dayPeriodBorderSide: const NullableBorderSideConverter()
          .fromJson(json['dayPeriodBorderSide']),
      dayPeriodColor:
          const NullableColorConverter().fromJson(json['dayPeriodColor']),
      dayPeriodShape: json['dayPeriodShape'] == null
          ? null
          : const NullableShapeBorderConverter()
              .fromJson(json['dayPeriodShape']) as OutlinedBorder?,
      dayPeriodTextColor:
          const NullableColorConverter().fromJson(json['dayPeriodTextColor']),
      dayPeriodTextStyle: const NullableTextStyleConverter()
          .fromJson(json['dayPeriodTextStyle']),
      dialBackgroundColor:
          const NullableColorConverter().fromJson(json['dialBackgroundColor']),
      dialHandColor:
          const NullableColorConverter().fromJson(json['dialHandColor']),
      dialTextColor:
          const NullableColorConverter().fromJson(json['dialTextColor']),
      entryModeIconColor:
          const NullableColorConverter().fromJson(json['entryModeIconColor']),
      helpTextStyle:
          const NullableTextStyleConverter().fromJson(json['helpTextStyle']),
      hourMinuteColor:
          const NullableColorConverter().fromJson(json['hourMinuteColor']),
      hourMinuteShape: const NullableShapeBorderConverter()
          .fromJson(json['hourMinuteShape']),
      hourMinuteTextColor:
          const NullableColorConverter().fromJson(json['hourMinuteTextColor']),
      hourMinuteTextStyle: const NullableTextStyleConverter()
          .fromJson(json['hourMinuteTextStyle']),
      inputDecorationTheme: const NullableInputDecorationThemeConverter()
          .fromJson(json['inputDecorationTheme']),
      shape: const NullableShapeBorderConverter().fromJson(json['shape']),
    );
  }

  @override
  Map<String, dynamic>? toJson(TimePickerThemeData? object) {
    if (object == null) return null;

    return <String, dynamic>{
      'backgroundColor':
          const NullableColorConverter().toJson(object.backgroundColor),
      'dayPeriodBorderSide': const NullableBorderSideConverter()
          .toJson(object.dayPeriodBorderSide),
      'dayPeriodColor':
          const NullableColorConverter().toJson(object.dayPeriodColor),
      'dayPeriodShape':
          const NullableShapeBorderConverter().toJson(object.dayPeriodShape),
      'dayPeriodTextColor':
          const NullableColorConverter().toJson(object.dayPeriodTextColor),
      'dayPeriodTextStyle':
          const NullableTextStyleConverter().toJson(object.dayPeriodTextStyle),
      'dialBackgroundColor':
          const NullableColorConverter().toJson(object.dialBackgroundColor),
      'dialHandColor':
          const NullableColorConverter().toJson(object.dialHandColor),
      'dialTextColor':
          const NullableColorConverter().toJson(object.dialTextColor),
      'entryModeIconColor':
          const NullableColorConverter().toJson(object.entryModeIconColor),
      'helpTextStyle':
          const NullableTextStyleConverter().toJson(object.helpTextStyle),
      'hourMinuteColor':
          const NullableColorConverter().toJson(object.hourMinuteColor),
      'hourMinuteShape':
          const NullableShapeBorderConverter().toJson(object.hourMinuteShape),
      'hourMinuteTextColor':
          const NullableColorConverter().toJson(object.hourMinuteTextColor),
      'hourMinuteTextStyle':
          const NullableTextStyleConverter().toJson(object.hourMinuteTextStyle),
      'inputDecorationTheme': const NullableInputDecorationThemeConverter()
          .toJson(object.inputDecorationTheme),
      'shape': const NullableShapeBorderConverter().toJson(object.shape),
    };
  }
}

class TimePickerThemeDataConverter
    extends JsonConverter<TimePickerThemeData, Map<String, dynamic>> {
  const TimePickerThemeDataConverter();

  @override
  TimePickerThemeData fromJson(Map<String, dynamic> json) {
    return const NullableTimePickerThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(TimePickerThemeData object) {
    return const NullableTimePickerThemeDataConverter().toJson(object)!;
  }
}
