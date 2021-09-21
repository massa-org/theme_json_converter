part of theme_json_converter;

class NullableFloatingActionButtonThemeDataConverter extends JsonConverter<
    FloatingActionButtonThemeData?, Map<String, dynamic>?> {
  const NullableFloatingActionButtonThemeDataConverter();

  @override
  FloatingActionButtonThemeData? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return FloatingActionButtonThemeData(
      backgroundColor: const NullableColorConverter().fromJson(
        json['backgroundColor'],
      ),
      disabledElevation: (json['disabledElevation'] as num?)?.toDouble(),
      elevation: (json['elevation'] as num?)?.toDouble(),
      focusColor: const NullableColorConverter().fromJson(
        json['focusColor'],
      ),
      focusElevation: (json['focusElevation'] as num?)?.toDouble(),
      foregroundColor: const NullableColorConverter().fromJson(
        json['foregroundColor'],
      ),
      highlightElevation: (json['highlightElevation'] as num?)?.toDouble(),
      hoverColor: const NullableColorConverter().fromJson(
        json['hoverColor'],
      ),
      hoverElevation: (json['hoverElevation'] as num?)?.toDouble(),
      shape: const NullableShapeBorderConverter().fromJson(
        json['shape'],
      ),
      splashColor: const NullableColorConverter().fromJson(
        json['splashColor'],
      ),
    );
  }

  @override
  Map<String, dynamic>? toJson(FloatingActionButtonThemeData? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'backgroundColor':
          const NullableColorConverter().toJson(value.backgroundColor),
      'disabledElevation': value.disabledElevation,
      'elevation': value.elevation,
      'focusColor': const NullableColorConverter().toJson(value.focusColor),
      'focusElevation': value.focusElevation,
      'foregroundColor':
          const NullableColorConverter().toJson(value.foregroundColor),
      'highlightElevation': value.highlightElevation,
      'hoverColor': const NullableColorConverter().toJson(value.hoverColor),
      'hoverElevation': value.hoverElevation,
      'shape': const NullableShapeBorderConverter().toJson(value.shape),
      'splashColor': const NullableColorConverter().toJson(value.splashColor),
    };

    throw 'Json_Unsuported_Value';
  }
}

class FloatingActionButtonThemeDataConverter
    extends JsonConverter<FloatingActionButtonThemeData, Map<String, dynamic>> {
  const FloatingActionButtonThemeDataConverter();

  @override
  FloatingActionButtonThemeData fromJson(Map<String, dynamic> json) {
    return const NullableFloatingActionButtonThemeDataConverter()
        .fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(FloatingActionButtonThemeData value) {
    return const NullableFloatingActionButtonThemeDataConverter()
        .toJson(value)!;
  }
}
