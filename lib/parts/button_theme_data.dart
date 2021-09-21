part of theme_json_converter;

class NullableButtonThemeDataConverter
    extends JsonConverter<ButtonThemeData?, Map<String, dynamic>?> {
  const NullableButtonThemeDataConverter();

  @override
  ButtonThemeData? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return ButtonThemeData(
      alignedDropdown: (json['alignedDropdown'] as bool),
      buttonColor: const NullableColorConverter().fromJson(
        json['buttonColor'],
      ),
      colorScheme: const NullableColorSchemeConverter().fromJson(
        json['colorScheme'],
      ),
      disabledColor: const NullableColorConverter().fromJson(
        json['disabledColor'],
      ),
      focusColor: const NullableColorConverter().fromJson(
        json['focusColor'],
      ),
      height: ((json['height'] ?? 36.0) as num).toDouble(),
      highlightColor: const NullableColorConverter().fromJson(
        json['highlightColor'],
      ),
      hoverColor: const NullableColorConverter().fromJson(
        json['hoverColor'],
      ),
      layoutBehavior: const NullableButtonBarLayoutBehaviorConverter().fromJson(
            json['layoutBehavior'],
          ) ??
          ButtonBarLayoutBehavior.padded,
      materialTapTargetSize:
          const NullableMaterialTapTargetSizeConverter().fromJson(
        json['materialTapTargetSize'],
      ),
      minWidth: ((json['minWidth'] ?? 88.0) as num).toDouble(),
      padding: const NullableEdgeInsetsGeometryConverter().fromJson(
        json['padding'],
      ),
      shape: const NullableShapeBorderConverter().fromJson(
        json['shape'],
      ),
      splashColor: const NullableColorConverter().fromJson(
        json['splashColor'],
      ),
      textTheme: const NullableButtonTextThemeConverter().fromJson(
        json['textTheme'],
      )!,
    );
  }

  @override
  Map<String, dynamic>? toJson(ButtonThemeData? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'alignedDropdown': value.alignedDropdown,
      'colorScheme':
          const NullableColorSchemeConverter().toJson(value.colorScheme),
      'height': value.height,
      'layoutBehavior': const NullableButtonBarLayoutBehaviorConverter()
          .toJson(value.layoutBehavior),
      'minWidth': value.minWidth,
      'padding': const NullableEdgeInsetsGeometryConverter()
          .toJson(value.padding as EdgeInsets?),
      'shape': const NullableShapeBorderConverter().toJson(value.shape),
      'textTheme':
          const NullableButtonTextThemeConverter().toJson(value.textTheme),
    };

    throw 'Json_Unsuported_Value';
  }
}

class ButtonThemeDataConverter
    extends JsonConverter<ButtonThemeData, Map<String, dynamic>> {
  const ButtonThemeDataConverter();

  @override
  ButtonThemeData fromJson(Map<String, dynamic> json) {
    return const NullableButtonThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(ButtonThemeData value) {
    return const NullableButtonThemeDataConverter().toJson(value)!;
  }
}
