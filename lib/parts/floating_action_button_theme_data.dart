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
  Map<String, dynamic>? toJson(FloatingActionButtonThemeData? object) {
    if (object == null) return null;

    return <String, dynamic>{
      'backgroundColor':
          const NullableColorConverter().toJson(object.backgroundColor),
      'disabledElevation': object.disabledElevation,
      'elevation': object.elevation,
      'focusColor': const NullableColorConverter().toJson(object.focusColor),
      'focusElevation': object.focusElevation,
      'foregroundColor':
          const NullableColorConverter().toJson(object.foregroundColor),
      'highlightElevation': object.highlightElevation,
      'hoverColor': const NullableColorConverter().toJson(object.hoverColor),
      'hoverElevation': object.hoverElevation,
      'shape': const NullableShapeBorderConverter().toJson(object.shape),
      'splashColor': const NullableColorConverter().toJson(object.splashColor),
    };
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
  Map<String, dynamic> toJson(FloatingActionButtonThemeData object) {
    return const NullableFloatingActionButtonThemeDataConverter()
        .toJson(object)!;
  }
}
