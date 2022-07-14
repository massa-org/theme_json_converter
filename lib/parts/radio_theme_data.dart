part of theme_json_converter;

class NullableRadioThemeDataConverter
    extends JsonConverter<RadioThemeData?, Map<String, dynamic>?> {
  const NullableRadioThemeDataConverter();

  @override
  RadioThemeData? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return RadioThemeData(
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
  Map<String, dynamic>? toJson(RadioThemeData? object) {
    if (object == null) return null;

    return {
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

class RadioThemeDataConverter
    extends JsonConverter<RadioThemeData, Map<String, dynamic>> {
  const RadioThemeDataConverter();

  @override
  RadioThemeData fromJson(Map<String, dynamic> json) {
    return const NullableRadioThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(RadioThemeData object) {
    return const NullableRadioThemeDataConverter().toJson(object)!;
  }
}
