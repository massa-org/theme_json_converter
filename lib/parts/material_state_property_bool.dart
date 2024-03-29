part of theme_json_converter;

class NullableMaterialStatePropertyBoolConverter extends JsonConverter<
    MaterialStateProperty<bool?>?, Map<String, dynamic>?> {
  const NullableMaterialStatePropertyBoolConverter();

  @override
  MaterialStateProperty<bool?>? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        return (json['disabled'] as bool?);
      } else if (states.contains(MaterialState.dragged)) {
        return (json['dragged'] as bool?);
      } else if (states.contains(MaterialState.error)) {
        return (json['error'] as bool?);
      } else if (states.contains(MaterialState.focused)) {
        return (json['focused'] as bool?);
      } else if (states.contains(MaterialState.hovered)) {
        return (json['hovered'] as bool?);
      } else if (states.contains(MaterialState.pressed)) {
        return (json['pressed'] as bool?);
      } else if (states.contains(MaterialState.selected)) {
        return (json['selected'] as bool?);
      } else {
        return (json['empty'] as bool?);
      }
    });
  }

  @override
  Map<String, dynamic>? toJson(MaterialStateProperty<bool?>? object) {
    if (object == null) return null;

    return {
      'disabled': object.resolve({MaterialState.disabled}),
      'dragged': object.resolve({MaterialState.dragged}),
      'empty': object.resolve({}),
      'error': object.resolve({MaterialState.error}),
      'focused': object.resolve({MaterialState.focused}),
      'hovered': object.resolve({MaterialState.hovered}),
      'pressed': object.resolve({MaterialState.pressed}),
      'selected': object.resolve({MaterialState.selected}),
    };
  }
}

class MaterialStatePropertyBoolConverter
    extends JsonConverter<MaterialStateProperty<bool?>, Map<String, dynamic>> {
  const MaterialStatePropertyBoolConverter();

  @override
  MaterialStateProperty<bool?> fromJson(Map<String, dynamic> json) {
    return const NullableMaterialStatePropertyBoolConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(MaterialStateProperty<bool?> object) {
    return const NullableMaterialStatePropertyBoolConverter().toJson(object)!;
  }
}
