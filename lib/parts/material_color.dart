part of theme_json_converter;

class NullableMaterialColorConverter
    extends JsonConverter<MaterialColor?, Map<String, dynamic>?> {
  const NullableMaterialColorConverter();

  @override
  MaterialColor? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    var swatches = <int, Color>{};

    var swatchesIn = json['swatches'];
    swatchesIn.forEach(
      (key, json) => swatches[(key as num).toInt()] =
          const NullableColorConverter().fromJson(json)!,
    );

    return MaterialColor(
      const NullableColorConverter().fromJson(json['primary'])!.value,
      swatches,
    );
  }

  @override
  Map<String, dynamic>? toJson(MaterialColor? object) {
    if (object == null) return null;

    return <String, dynamic>{
      'primary': const NullableColorConverter().toJson(Color(object.value)),
      'swatches': {
        '50': const NullableColorConverter().toJson(object.shade50),
        '100': const NullableColorConverter().toJson(object.shade100),
        '200': const NullableColorConverter().toJson(object.shade200),
        '300': const NullableColorConverter().toJson(object.shade300),
        '400': const NullableColorConverter().toJson(object.shade400),
        '500': const NullableColorConverter().toJson(object.shade500),
        '600': const NullableColorConverter().toJson(object.shade600),
        '700': const NullableColorConverter().toJson(object.shade700),
        '800': const NullableColorConverter().toJson(object.shade800),
        '900': const NullableColorConverter().toJson(object.shade900),
      },
    };
  }
}

class MaterialColorConverter
    extends JsonConverter<MaterialColor, Map<String, dynamic>> {
  const MaterialColorConverter();

  @override
  MaterialColor fromJson(Map<String, dynamic> json) {
    return const NullableMaterialColorConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(MaterialColor object) {
    return const NullableMaterialColorConverter().toJson(object)!;
  }
}
