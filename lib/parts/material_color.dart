part of theme_json_converter;

class NullableMaterialColorConverter
    extends JsonConverter<MaterialColor?, dynamic> {
  const NullableMaterialColorConverter();

  @override
  MaterialColor? fromJson(json) => const TypedNullableMaterialColorConverter()
      .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableMaterialColorConverter().toJson(object);
}

class TypedNullableMaterialColorConverter
    extends JsonConverter<MaterialColor?, Map<String, dynamic>?> {
  const TypedNullableMaterialColorConverter();
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
  Map<String, dynamic>? toJson(MaterialColor? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'primary': const NullableColorConverter().toJson(Color(value.value)),
      'swatches': {
        '50': const NullableColorConverter().toJson(value.shade50),
        '100': const NullableColorConverter().toJson(value.shade100),
        '200': const NullableColorConverter().toJson(value.shade200),
        '300': const NullableColorConverter().toJson(value.shade300),
        '400': const NullableColorConverter().toJson(value.shade400),
        '500': const NullableColorConverter().toJson(value.shade500),
        '600': const NullableColorConverter().toJson(value.shade600),
        '700': const NullableColorConverter().toJson(value.shade700),
        '800': const NullableColorConverter().toJson(value.shade800),
        '900': const NullableColorConverter().toJson(value.shade900),
      },
    };

    throw 'Json_Unsuported_Value';
  }
}

class MaterialColorConverter extends JsonConverter<MaterialColor, dynamic> {
  const MaterialColorConverter();

  @override
  MaterialColor fromJson(json) => const TypedMaterialColorConverter()
      .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) => const TypedMaterialColorConverter().toJson(object);
}

class TypedMaterialColorConverter
    extends JsonConverter<MaterialColor, Map<String, dynamic>> {
  const TypedMaterialColorConverter();
  @override
  MaterialColor fromJson(Map<String, dynamic> json) {
    return const NullableMaterialColorConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(MaterialColor value) {
    return const NullableMaterialColorConverter().toJson(value)!;
  }
}
