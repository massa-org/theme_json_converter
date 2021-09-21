part of theme_json_converter;

class NullableToggleButtonsThemeDataConverter
    extends JsonConverter<ToggleButtonsThemeData?, Map<String, dynamic>?> {
  const NullableToggleButtonsThemeDataConverter();

  @override
  ToggleButtonsThemeData? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return ToggleButtonsThemeData(
      borderColor: const NullableColorConverter().fromJson(
        json['borderColor'],
      ),
      borderRadius: const NullableBorderRadiusConverter().fromJson(
        json['borderRadius'],
      ),
      borderWidth: (json['borderWidth'] as num?)?.toDouble(),
      color: const NullableColorConverter().fromJson(
        json['color'],
      ),
      constraints: const NullableBoxConstraintsConverter().fromJson(
        json['constraints'],
      ),
      disabledBorderColor: const NullableColorConverter().fromJson(
        json['disabledBorderColor'],
      ),
      disabledColor: const NullableColorConverter().fromJson(
        json['disabledColor'],
      ),
      fillColor: const NullableColorConverter().fromJson(
        json['fillColor'],
      ),
      focusColor: const NullableColorConverter().fromJson(
        json['focusColor'],
      ),
      highlightColor: const NullableColorConverter().fromJson(
        json['highlightColor'],
      ),
      hoverColor: const NullableColorConverter().fromJson(
        json['hoverColor'],
      ),
      selectedBorderColor: const NullableColorConverter().fromJson(
        json['selectedBorderColor'],
      ),
      selectedColor: const NullableColorConverter().fromJson(
        json['selectedColor'],
      ),
      splashColor: const NullableColorConverter().fromJson(
        json['splashColor'],
      ),
      textStyle: const NullableTextStyleConverter().fromJson(
        json['textStyle'],
      ),
    );
  }

  @override
  Map<String, dynamic>? toJson(ToggleButtonsThemeData? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'borderColor': const NullableColorConverter().toJson(value.borderColor),
      'borderRadius':
          const NullableBorderRadiusConverter().toJson(value.borderRadius),
      'borderWidth': value.borderWidth,
      'color': const NullableColorConverter().toJson(value.color),
      'constraints':
          const NullableBoxConstraintsConverter().toJson(value.constraints),
      'disabledBorderColor':
          const NullableColorConverter().toJson(value.disabledBorderColor),
      'disabledColor':
          const NullableColorConverter().toJson(value.disabledColor),
      'fillColor': const NullableColorConverter().toJson(value.fillColor),
      'focusColor': const NullableColorConverter().toJson(value.focusColor),
      'highlightColor':
          const NullableColorConverter().toJson(value.highlightColor),
      'hoverColor': const NullableColorConverter().toJson(value.hoverColor),
      'selectedBorderColor':
          const NullableColorConverter().toJson(value.selectedBorderColor),
      'selectedColor':
          const NullableColorConverter().toJson(value.selectedColor),
      'splashColor': const NullableColorConverter().toJson(value.splashColor),
      'textStyle': const NullableTextStyleConverter().toJson(value.textStyle),
    };

    throw 'Json_Unsuported_Value';
  }
}

class ToggleButtonsThemeDataConverter
    extends JsonConverter<ToggleButtonsThemeData, Map<String, dynamic>> {
  const ToggleButtonsThemeDataConverter();

  @override
  ToggleButtonsThemeData fromJson(Map<String, dynamic> json) {
    return const NullableToggleButtonsThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(ToggleButtonsThemeData value) {
    return const NullableToggleButtonsThemeDataConverter().toJson(value)!;
  }
}
