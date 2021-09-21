part of theme_json_converter;

class NullableSnackBarThemeDataConverter
    extends JsonConverter<SnackBarThemeData?, Map<String, dynamic>?> {
  const NullableSnackBarThemeDataConverter();

  @override
  SnackBarThemeData? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return SnackBarThemeData(
      actionTextColor: const NullableColorConverter().fromJson(
        json['actionTextColor'],
      ),
      backgroundColor: const NullableColorConverter().fromJson(
        json['backgroundColor'],
      ),
      behavior: const NullableSnackBarBehaviorConverter().fromJson(
        json['behavior'],
      ),
      contentTextStyle: const NullableTextStyleConverter().fromJson(
        json['contentTextStyle'],
      ),
      disabledActionTextColor: const NullableColorConverter().fromJson(
        json['disabledActionTextColor'],
      ),
      elevation: (json['elevation'] as num?)?.toDouble(),
      shape: const NullableShapeBorderConverter().fromJson(
        json['shape'],
      ),
    );
  }

  @override
  Map<String, dynamic>? toJson(SnackBarThemeData? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'actionTextColor':
          const NullableColorConverter().toJson(value.actionTextColor),
      'backgroundColor':
          const NullableColorConverter().toJson(value.backgroundColor),
      'behavior':
          const NullableSnackBarBehaviorConverter().toJson(value.behavior),
      'contentTextStyle':
          const NullableTextStyleConverter().toJson(value.contentTextStyle),
      'disabledActionTextColor':
          const NullableColorConverter().toJson(value.disabledActionTextColor),
      'elevation': value.elevation,
      'shape': const NullableShapeBorderConverter().toJson(value.shape),
    };

    throw 'Json_Unsuported_Value';
  }
}

class SnackBarThemeDataConverter
    extends JsonConverter<SnackBarThemeData, Map<String, dynamic>> {
  const SnackBarThemeDataConverter();

  @override
  SnackBarThemeData fromJson(Map<String, dynamic> json) {
    return const NullableSnackBarThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(SnackBarThemeData value) {
    return const NullableSnackBarThemeDataConverter().toJson(value)!;
  }
}
