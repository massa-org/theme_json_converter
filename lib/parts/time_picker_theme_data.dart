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
  Map<String, dynamic>? toJson(TimePickerThemeData? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'backgroundColor':
          const NullableColorConverter().toJson(value.backgroundColor),
      'dayPeriodBorderSide':
          const NullableBorderSideConverter().toJson(value.dayPeriodBorderSide),
      'dayPeriodColor':
          const NullableColorConverter().toJson(value.dayPeriodColor),
      'dayPeriodShape':
          const NullableShapeBorderConverter().toJson(value.dayPeriodShape),
      'dayPeriodTextColor':
          const NullableColorConverter().toJson(value.dayPeriodTextColor),
      'dayPeriodTextStyle':
          const NullableTextStyleConverter().toJson(value.dayPeriodTextStyle),
      'dialBackgroundColor':
          const NullableColorConverter().toJson(value.dialBackgroundColor),
      'dialHandColor':
          const NullableColorConverter().toJson(value.dialHandColor),
      'dialTextColor':
          const NullableColorConverter().toJson(value.dialTextColor),
      'entryModeIconColor':
          const NullableColorConverter().toJson(value.entryModeIconColor),
      'helpTextStyle':
          const NullableTextStyleConverter().toJson(value.helpTextStyle),
      'hourMinuteColor':
          const NullableColorConverter().toJson(value.hourMinuteColor),
      'hourMinuteShape':
          const NullableShapeBorderConverter().toJson(value.hourMinuteShape),
      'hourMinuteTextColor':
          const NullableColorConverter().toJson(value.hourMinuteTextColor),
      'hourMinuteTextStyle':
          const NullableTextStyleConverter().toJson(value.hourMinuteTextStyle),
      'inputDecorationTheme': const NullableInputDecorationThemeConverter()
          .toJson(value.inputDecorationTheme),
      'shape': const NullableShapeBorderConverter().toJson(value.shape),
    };

    throw 'Json_Unsuported_Value';
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
  Map<String, dynamic> toJson(TimePickerThemeData value) {
    return const NullableTimePickerThemeDataConverter().toJson(value)!;
  }
}
