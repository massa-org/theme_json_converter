part of theme_json_converter;

class NullableCheckboxThemeDataConverter
    extends JsonConverter<CheckboxThemeData?, Map<String, dynamic>?> {
  const NullableCheckboxThemeDataConverter();

  @override
  CheckboxThemeData? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return CheckboxThemeData(
      checkColor: const NullableMaterialStatePropertyColorConverter().fromJson(
        json['checkColor'],
      ),
      fillColor: const NullableMaterialStatePropertyColorConverter().fromJson(
        json['fillColor'],
      ),
      materialTapTargetSize:
          const NullableMaterialTapTargetSizeConverter().fromJson(
        json['materialTapTargetSize'],
      ),
      mouseCursor:
          const NullableMaterialStatePropertyMouseCursorConverter().fromJson(
        json['mouseCursor'],
      ),
      overlayColor:
          const NullableMaterialStatePropertyColorConverter().fromJson(
        json['overlayColor'],
      ),
      splashRadius: (json['splashRadius'] as num?)?.toDouble(),
      visualDensity: const NullableVisualDensityConverter().fromJson(
        json['visualDensity'],
      ),
    );
  }

  @override
  Map<String, dynamic>? toJson(CheckboxThemeData? value) {
    if (value == null) return null;

    return {
      'checkColor': const NullableMaterialStatePropertyColorConverter().toJson(
        value.checkColor,
      ),
      'fillColor': const NullableMaterialStatePropertyColorConverter().toJson(
        value.fillColor,
      ),
      'materialTapTargetSize':
          const NullableMaterialTapTargetSizeConverter().toJson(
        value.materialTapTargetSize,
      ),
      'mouseCursor':
          const NullableMaterialStatePropertyMouseCursorConverter().toJson(
        value.mouseCursor,
      ),
      'overlayColor':
          const NullableMaterialStatePropertyColorConverter().toJson(
        value.overlayColor,
      ),
      'splashRadius': value.splashRadius,
      'visualDensity':
          const NullableVisualDensityConverter().toJson(value.visualDensity),
    };

    throw 'Json_Unsuported_Value';
  }
}

class CheckboxThemeDataConverter
    extends JsonConverter<CheckboxThemeData, Map<String, dynamic>> {
  const CheckboxThemeDataConverter();

  @override
  CheckboxThemeData fromJson(Map<String, dynamic> json) {
    return const NullableCheckboxThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(CheckboxThemeData value) {
    return const NullableCheckboxThemeDataConverter().toJson(value)!;
  }
}
