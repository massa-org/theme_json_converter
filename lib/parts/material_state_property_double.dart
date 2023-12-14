part of theme_json_converter;

class NullableMaterialStatePropertyDoubleConverter
    extends JsonConverter<MaterialStateProperty<double?>?, dynamic> {
  const NullableMaterialStatePropertyDoubleConverter();

  @override
  MaterialStateProperty<double?>? fromJson(json) =>
      const TypedNullableMaterialStatePropertyDoubleConverter()
          .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableMaterialStatePropertyDoubleConverter().toJson(object);
}

class TypedNullableMaterialStatePropertyDoubleConverter extends JsonConverter<
    MaterialStateProperty<double?>?, Map<String, dynamic>?> {
  const TypedNullableMaterialStatePropertyDoubleConverter();

  @override
  MaterialStateProperty<double?>? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        return (json['disabled'] as num?)?.toDouble();
      } else if (states.contains(MaterialState.dragged)) {
        return (json['dragged'] as num?)?.toDouble();
      } else if (states.contains(MaterialState.error)) {
        return (json['error'] as num?)?.toDouble();
      } else if (states.contains(MaterialState.focused)) {
        return (json['focused'] as num?)?.toDouble();
      } else if (states.contains(MaterialState.hovered)) {
        return (json['hovered'] as num?)?.toDouble();
      } else if (states.contains(MaterialState.pressed)) {
        return (json['pressed'] as num?)?.toDouble();
      } else if (states.contains(MaterialState.selected)) {
        return (json['selected'] as num?)?.toDouble();
      } else {
        return (json['empty'] as num?)?.toDouble();
      }
    });
  }

  @override
  Map<String, dynamic>? toJson(MaterialStateProperty<double?>? value) {
    if (value == null) return null;

    return {
      'disabled': value.resolve({MaterialState.disabled}),
      'dragged': value.resolve({MaterialState.dragged}),
      'empty': value.resolve({}),
      'error': value.resolve({MaterialState.error}),
      'focused': value.resolve({MaterialState.focused}),
      'hovered': value.resolve({MaterialState.hovered}),
      'pressed': value.resolve({MaterialState.pressed}),
      'selected': value.resolve({MaterialState.selected}),
    };

    throw 'Json_Unsuported_Value';
  }
}

class MaterialStatePropertyDoubleConverter
    extends JsonConverter<MaterialStateProperty<double?>, dynamic> {
  const MaterialStatePropertyDoubleConverter();

  @override
  MaterialStateProperty<double?> fromJson(json) =>
      const TypedMaterialStatePropertyDoubleConverter()
          .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) =>
      const TypedMaterialStatePropertyDoubleConverter().toJson(object);
}

class TypedMaterialStatePropertyDoubleConverter extends JsonConverter<
    MaterialStateProperty<double?>, Map<String, dynamic>> {
  const TypedMaterialStatePropertyDoubleConverter();

  @override
  MaterialStateProperty<double?> fromJson(Map<String, dynamic> json) {
    return const NullableMaterialStatePropertyDoubleConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(MaterialStateProperty<double?> value) {
    return const NullableMaterialStatePropertyDoubleConverter().toJson(value)!;
  }
}
