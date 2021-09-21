part of theme_json_converter;

class NullableChipThemeDataConverter
    extends JsonConverter<ChipThemeData?, Map<String, dynamic>?> {
  const NullableChipThemeDataConverter();

  @override
  ChipThemeData? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return ChipThemeData(
      backgroundColor: const NullableColorConverter().fromJson(
        json['backgroundColor'],
      )!,
      brightness: const NullableBrightnessConverter().fromJson(
        json['brightness'],
      )!,
      checkmarkColor: const NullableColorConverter().fromJson(
        json['checkmarkColor'],
      ),
      deleteIconColor: const NullableColorConverter().fromJson(
        json['deleteIconColor'],
      ),
      disabledColor: const NullableColorConverter().fromJson(
        json['disabledColor'],
      )!,
      elevation: (json['elevation'] as num?)?.toDouble(),
      labelPadding: const NullableEdgeInsetsGeometryConverter().fromJson(
        json['labelPadding'],
      ),
      labelStyle: const NullableTextStyleConverter().fromJson(
        json['labelStyle'],
      )!,
      padding: const NullableEdgeInsetsGeometryConverter().fromJson(
        json['padding'],
      )!,
      pressElevation: (json['pressElevation'] as num?)?.toDouble(),
      secondaryLabelStyle: const NullableTextStyleConverter().fromJson(
        json['secondaryLabelStyle'],
      )!,
      secondarySelectedColor: const NullableColorConverter().fromJson(
        json['secondarySelectedColor'],
      )!,
      selectedColor: const NullableColorConverter().fromJson(
        json['selectedColor'],
      )!,
      shape: const NullableShapeBorderConverter().fromJson(
        json['shape'],
      ) as OutlinedBorder?,
      side: const NullableBorderSideConverter().fromJson(json['side']),
      selectedShadowColor: const NullableColorConverter().fromJson(
        json['selectedShadowColor'],
      ),
      shadowColor: const NullableColorConverter().fromJson(
        json['shadowColor'],
      ),
      showCheckmark: json['showCheckmark'] == null
          ? null
          : (json['showCheckmark'] as bool),
    );
  }

  @override
  Map<String, dynamic>? toJson(ChipThemeData? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'backgroundColor':
          const NullableColorConverter().toJson(value.backgroundColor),
      'brightness':
          const NullableBrightnessConverter().toJson(value.brightness),
      'checkmarkColor':
          const NullableColorConverter().toJson(value.checkmarkColor),
      'deleteIconColor':
          const NullableColorConverter().toJson(value.deleteIconColor),
      'disabledColor':
          const NullableColorConverter().toJson(value.disabledColor),
      'elevation': value.elevation,
      'labelPadding': const NullableEdgeInsetsGeometryConverter()
          .toJson(value.labelPadding as EdgeInsets?),
      'labelStyle': const NullableTextStyleConverter().toJson(value.labelStyle),
      'padding': const NullableEdgeInsetsGeometryConverter()
          .toJson(value.padding as EdgeInsets?),
      'pressElevation': value.pressElevation,
      'secondaryLabelStyle':
          const NullableTextStyleConverter().toJson(value.secondaryLabelStyle),
      'secondarySelectedColor':
          const NullableColorConverter().toJson(value.secondarySelectedColor),
      'selectedColor':
          const NullableColorConverter().toJson(value.selectedColor),
      'shape': const NullableShapeBorderConverter().toJson(value.shape),
      'side': const NullableBorderSideConverter().toJson(value.side),
      'selectedShadowColor':
          const NullableColorConverter().toJson(value.selectedShadowColor),
      'shadowColor': const NullableColorConverter().toJson(value.shadowColor),
      'showCheckmark': value.showCheckmark,
    };

    throw 'Json_Unsuported_Value';
  }
}

class ChipThemeDataConverter
    extends JsonConverter<ChipThemeData, Map<String, dynamic>> {
  const ChipThemeDataConverter();

  @override
  ChipThemeData fromJson(Map<String, dynamic> json) {
    return const NullableChipThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(ChipThemeData value) {
    return const NullableChipThemeDataConverter().toJson(value)!;
  }
}
