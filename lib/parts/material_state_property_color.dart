part of theme_json_converter;

class NullableMaterialStatePropertyColorConverter
    extends JsonConverter<MaterialStateProperty<Color?>?, dynamic> {
  const NullableMaterialStatePropertyColorConverter();

  @override
  MaterialStateProperty<Color?>? fromJson(json) =>
      const TypedNullableMaterialStatePropertyColorConverter()
          .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableMaterialStatePropertyColorConverter().toJson(object);
}

class TypedNullableMaterialStatePropertyColorConverter extends JsonConverter<
    MaterialStateProperty<Color?>?, Map<String, dynamic>?> {
  const TypedNullableMaterialStatePropertyColorConverter();

  @override
  MaterialStateProperty<Color?>? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return MaterialStateProperty.resolveWith(
      (states) {
        if (states.contains(MaterialState.disabled)) {
          return const NullableColorConverter().fromJson(json['disabled']);
        } else if (states.contains(MaterialState.dragged)) {
          return const NullableColorConverter().fromJson(json['dragged']);
        } else if (states.contains(MaterialState.error)) {
          return const NullableColorConverter().fromJson(json['error']);
        } else if (states.contains(MaterialState.focused)) {
          return const NullableColorConverter().fromJson(json['focused']);
        } else if (states.contains(MaterialState.hovered)) {
          return const NullableColorConverter().fromJson(json['hovered']);
        } else if (states.contains(MaterialState.pressed)) {
          return const NullableColorConverter().fromJson(json['pressed']);
        } else if (states.contains(MaterialState.selected)) {
          return const NullableColorConverter().fromJson(json['selected']);
        } else {
          return const NullableColorConverter().fromJson(json['empty']);
        }
      },
    );
  }

  @override
  Map<String, dynamic>? toJson(MaterialStateProperty<Color?>? value) {
    if (value == null) return null;

    return {
      'disabled': const NullableColorConverter()
          .toJson(value.resolve({MaterialState.disabled})),
      'dragged': const NullableColorConverter()
          .toJson(value.resolve({MaterialState.dragged})),
      'empty': const NullableColorConverter().toJson(value.resolve({})),
      'error': const NullableColorConverter()
          .toJson(value.resolve({MaterialState.error})),
      'focused': const NullableColorConverter()
          .toJson(value.resolve({MaterialState.focused})),
      'hovered': const NullableColorConverter()
          .toJson(value.resolve({MaterialState.hovered})),
      'pressed': const NullableColorConverter()
          .toJson(value.resolve({MaterialState.pressed})),
      'selected': const NullableColorConverter()
          .toJson(value.resolve({MaterialState.selected})),
    };

    throw 'Json_Unsuported_Value';
  }
}

class MaterialStatePropertyColorConverter
    extends JsonConverter<MaterialStateProperty<Color?>, dynamic> {
  const MaterialStatePropertyColorConverter();

  @override
  MaterialStateProperty<Color?> fromJson(json) =>
      const TypedMaterialStatePropertyColorConverter()
          .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) =>
      const TypedMaterialStatePropertyColorConverter().toJson(object);
}

class TypedMaterialStatePropertyColorConverter
    extends JsonConverter<MaterialStateProperty<Color?>, Map<String, dynamic>> {
  const TypedMaterialStatePropertyColorConverter();
  @override
  MaterialStateProperty<Color?> fromJson(Map<String, dynamic> json) {
    return const NullableMaterialStatePropertyColorConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(MaterialStateProperty<Color?> value) {
    return const NullableMaterialStatePropertyColorConverter().toJson(value)!;
  }
}
