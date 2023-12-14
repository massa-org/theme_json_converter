part of theme_json_converter;

class NullableRadioThemeDataConverter
    extends JsonConverter<RadioThemeData?, dynamic> {
  const NullableRadioThemeDataConverter();

  @override
  RadioThemeData? fromJson(json) => const TypedNullableRadioThemeDataConverter()
      .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableRadioThemeDataConverter().toJson(object);
}

class TypedNullableRadioThemeDataConverter
    extends JsonConverter<RadioThemeData?, Map<String, dynamic>?> {
  const TypedNullableRadioThemeDataConverter();
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
  Map<String, dynamic>? toJson(RadioThemeData? value) {
    if (value == null) return null;

    return {
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

class RadioThemeDataConverter extends JsonConverter<RadioThemeData, dynamic> {
  const RadioThemeDataConverter();

  @override
  RadioThemeData fromJson(json) => const TypedRadioThemeDataConverter()
      .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) => const TypedRadioThemeDataConverter().toJson(object);
}

class TypedRadioThemeDataConverter
    extends JsonConverter<RadioThemeData, Map<String, dynamic>> {
  const TypedRadioThemeDataConverter();
  @override
  RadioThemeData fromJson(Map<String, dynamic> json) {
    return const NullableRadioThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(RadioThemeData value) {
    return const NullableRadioThemeDataConverter().toJson(value)!;
  }
}
