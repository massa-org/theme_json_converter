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
  Map<String, dynamic>? toJson(ToggleButtonsThemeData? object) {
    if (object == null) return null;

    return <String, dynamic>{
      'borderColor': const NullableColorConverter().toJson(object.borderColor),
      'borderRadius':
          const NullableBorderRadiusConverter().toJson(object.borderRadius),
      'borderWidth': object.borderWidth,
      'color': const NullableColorConverter().toJson(object.color),
      'constraints':
          const NullableBoxConstraintsConverter().toJson(object.constraints),
      'disabledBorderColor':
          const NullableColorConverter().toJson(object.disabledBorderColor),
      'disabledColor':
          const NullableColorConverter().toJson(object.disabledColor),
      'fillColor': const NullableColorConverter().toJson(object.fillColor),
      'focusColor': const NullableColorConverter().toJson(object.focusColor),
      'highlightColor':
          const NullableColorConverter().toJson(object.highlightColor),
      'hoverColor': const NullableColorConverter().toJson(object.hoverColor),
      'selectedBorderColor':
          const NullableColorConverter().toJson(object.selectedBorderColor),
      'selectedColor':
          const NullableColorConverter().toJson(object.selectedColor),
      'splashColor': const NullableColorConverter().toJson(object.splashColor),
      'textStyle': const NullableTextStyleConverter().toJson(object.textStyle),
    };
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
  Map<String, dynamic> toJson(ToggleButtonsThemeData object) {
    return const NullableToggleButtonsThemeDataConverter().toJson(object)!;
  }
}
