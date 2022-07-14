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
  Map<String, dynamic>? toJson(ChipThemeData? object) {
    if (object == null) return null;

    return <String, dynamic>{
      'backgroundColor':
          const NullableColorConverter().toJson(object.backgroundColor),
      'brightness':
          const NullableBrightnessConverter().toJson(object.brightness),
      'checkmarkColor':
          const NullableColorConverter().toJson(object.checkmarkColor),
      'deleteIconColor':
          const NullableColorConverter().toJson(object.deleteIconColor),
      'disabledColor':
          const NullableColorConverter().toJson(object.disabledColor),
      'elevation': object.elevation,
      'labelPadding': const NullableEdgeInsetsGeometryConverter()
          .toJson(object.labelPadding as EdgeInsets?),
      'labelStyle':
          const NullableTextStyleConverter().toJson(object.labelStyle),
      'padding': const NullableEdgeInsetsGeometryConverter()
          .toJson(object.padding as EdgeInsets?),
      'pressElevation': object.pressElevation,
      'secondaryLabelStyle':
          const NullableTextStyleConverter().toJson(object.secondaryLabelStyle),
      'secondarySelectedColor':
          const NullableColorConverter().toJson(object.secondarySelectedColor),
      'selectedColor':
          const NullableColorConverter().toJson(object.selectedColor),
      'shape': const NullableShapeBorderConverter().toJson(object.shape),
      'side': const NullableBorderSideConverter().toJson(object.side),
      'selectedShadowColor':
          const NullableColorConverter().toJson(object.selectedShadowColor),
      'shadowColor': const NullableColorConverter().toJson(object.shadowColor),
      'showCheckmark': object.showCheckmark,
    };
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
  Map<String, dynamic> toJson(ChipThemeData object) {
    return const NullableChipThemeDataConverter().toJson(object)!;
  }
}
