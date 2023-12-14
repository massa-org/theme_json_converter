part of theme_json_converter;

class NullableCupertinoTextThemeDataConverter
    extends JsonConverter<CupertinoTextThemeData?, dynamic> {
  const NullableCupertinoTextThemeDataConverter();

  @override
  CupertinoTextThemeData? fromJson(json) =>
      const TypedNullableCupertinoTextThemeDataConverter()
          .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableCupertinoTextThemeDataConverter().toJson(object);
}

class TypedNullableCupertinoTextThemeDataConverter
    extends JsonConverter<CupertinoTextThemeData?, Map<String, dynamic>?> {
  const TypedNullableCupertinoTextThemeDataConverter();
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
  Map<String, dynamic>? toJson(CupertinoTextThemeData? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'actionTextStyle':
          const NullableTextStyleConverter().toJson(value.actionTextStyle),
      'dateTimePickerTextStyle': const NullableTextStyleConverter().toJson(
        value.dateTimePickerTextStyle,
      ),
      'navActionTextStyle':
          const NullableTextStyleConverter().toJson(value.navActionTextStyle),
      'navLargeTitleTextStyle': const NullableTextStyleConverter()
          .toJson(value.navLargeTitleTextStyle),
      'navTitleTextStyle':
          const NullableTextStyleConverter().toJson(value.navTitleTextStyle),
      'pickerTextStyle':
          const NullableTextStyleConverter().toJson(value.pickerTextStyle),
      'tabLabelTextStyle':
          const NullableTextStyleConverter().toJson(value.tabLabelTextStyle),
      'textStyle': const NullableTextStyleConverter().toJson(value.textStyle),
    };

    throw 'Json_Unsuported_Value';
  }
}

class CupertinoTextThemeDataConverter
    extends JsonConverter<CupertinoTextThemeData, dynamic> {
  const CupertinoTextThemeDataConverter();

  @override
  CupertinoTextThemeData fromJson(json) =>
      const TypedCupertinoTextThemeDataConverter()
          .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) =>
      const TypedCupertinoTextThemeDataConverter().toJson(object);
}

class TypedCupertinoTextThemeDataConverter
    extends JsonConverter<CupertinoTextThemeData, Map<String, dynamic>> {
  const TypedCupertinoTextThemeDataConverter();
  @override
  CupertinoTextThemeData fromJson(Map<String, dynamic> json) {
    return const NullableCupertinoTextThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(CupertinoTextThemeData value) {
    return const NullableCupertinoTextThemeDataConverter().toJson(value)!;
  }
}
