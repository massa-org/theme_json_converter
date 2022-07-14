part of theme_json_converter;

class NullableCupertinoTextThemeDataConverter
    extends JsonConverter<CupertinoTextThemeData?, Map<String, dynamic>?> {
  const NullableCupertinoTextThemeDataConverter();

  @override
  CupertinoTextThemeData? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return CupertinoTextThemeData(
      actionTextStyle: const NullableTextStyleConverter().fromJson(
        json['actionTextStyle'],
      ),
      // @deprecated
      // brightness
      dateTimePickerTextStyle: const NullableTextStyleConverter().fromJson(
        json['dateTimePickerTextStyle'],
      ),
      navActionTextStyle: const NullableTextStyleConverter().fromJson(
        json['navActionTextStyle'],
      ),
      navLargeTitleTextStyle: const NullableTextStyleConverter().fromJson(
        json['navLargeTitleTextStyle'],
      ),
      navTitleTextStyle: const NullableTextStyleConverter().fromJson(
        json['navTitleTextStyle'],
      ),
      pickerTextStyle: const NullableTextStyleConverter().fromJson(
        json['pickerTextStyle'],
      ),
      primaryColor: const NullableColorConverter().fromJson(
            json['primaryColor'],
          ) ??
          CupertinoColors.systemBlue,
      tabLabelTextStyle: const NullableTextStyleConverter().fromJson(
        json['tabLabelTextStyle'],
      ),
      textStyle: const NullableTextStyleConverter().fromJson(
        json['textStyle'],
      ),
    );
  }

  @override
  Map<String, dynamic>? toJson(CupertinoTextThemeData? object) {
    if (object == null) return null;

    return <String, dynamic>{
      'actionTextStyle':
          const NullableTextStyleConverter().toJson(object.actionTextStyle),
      'dateTimePickerTextStyle': const NullableTextStyleConverter().toJson(
        object.dateTimePickerTextStyle,
      ),
      'navActionTextStyle':
          const NullableTextStyleConverter().toJson(object.navActionTextStyle),
      'navLargeTitleTextStyle': const NullableTextStyleConverter()
          .toJson(object.navLargeTitleTextStyle),
      'navTitleTextStyle':
          const NullableTextStyleConverter().toJson(object.navTitleTextStyle),
      'pickerTextStyle':
          const NullableTextStyleConverter().toJson(object.pickerTextStyle),
      'tabLabelTextStyle':
          const NullableTextStyleConverter().toJson(object.tabLabelTextStyle),
      'textStyle': const NullableTextStyleConverter().toJson(object.textStyle),
    };
  }
}

class CupertinoTextThemeDataConverter
    extends JsonConverter<CupertinoTextThemeData, Map<String, dynamic>> {
  const CupertinoTextThemeDataConverter();

  @override
  CupertinoTextThemeData fromJson(Map<String, dynamic> json) {
    return const NullableCupertinoTextThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(CupertinoTextThemeData object) {
    return const NullableCupertinoTextThemeDataConverter().toJson(object)!;
  }
}
