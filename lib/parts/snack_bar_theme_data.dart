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
  Map<String, dynamic>? toJson(SnackBarThemeData? object) {
    if (object == null) return null;

    return <String, dynamic>{
      'actionTextColor':
          const NullableColorConverter().toJson(object.actionTextColor),
      'backgroundColor':
          const NullableColorConverter().toJson(object.backgroundColor),
      'behavior':
          const NullableSnackBarBehaviorConverter().toJson(object.behavior),
      'contentTextStyle':
          const NullableTextStyleConverter().toJson(object.contentTextStyle),
      'disabledActionTextColor':
          const NullableColorConverter().toJson(object.disabledActionTextColor),
      'elevation': object.elevation,
      'shape': const NullableShapeBorderConverter().toJson(object.shape),
    };
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
  Map<String, dynamic> toJson(SnackBarThemeData object) {
    return const NullableSnackBarThemeDataConverter().toJson(object)!;
  }
}
