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
  Map<String, dynamic>? toJson(CheckboxThemeData? object) {
    if (object == null) return null;

    return {
      'checkColor': const NullableMaterialStatePropertyColorConverter().toJson(
        object.checkColor,
      ),
      'fillColor': const NullableMaterialStatePropertyColorConverter().toJson(
        object.fillColor,
      ),
      'materialTapTargetSize':
          const NullableMaterialTapTargetSizeConverter().toJson(
        object.materialTapTargetSize,
      ),
      'mouseCursor':
          const NullableMaterialStatePropertyMouseCursorConverter().toJson(
        object.mouseCursor,
      ),
      'overlayColor':
          const NullableMaterialStatePropertyColorConverter().toJson(
        object.overlayColor,
      ),
      'splashRadius': object.splashRadius,
      'visualDensity':
          const NullableVisualDensityConverter().toJson(object.visualDensity),
    };
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
  Map<String, dynamic> toJson(CheckboxThemeData object) {
    return const NullableCheckboxThemeDataConverter().toJson(object)!;
  }
}
