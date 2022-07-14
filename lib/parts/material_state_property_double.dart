part of theme_json_converter;

class NullableMaterialStatePropertyDoubleConverter extends JsonConverter<
    MaterialStateProperty<double?>?, Map<String, dynamic>?> {
  const NullableMaterialStatePropertyDoubleConverter();

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
  Map<String, dynamic>? toJson(MaterialStateProperty<double?>? object) {
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

class MaterialStatePropertyDoubleConverter extends JsonConverter<
    MaterialStateProperty<double?>, Map<String, dynamic>> {
  const MaterialStatePropertyDoubleConverter();

  @override
  MaterialStateProperty<double?> fromJson(Map<String, dynamic> json) {
    return const NullableMaterialStatePropertyDoubleConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(MaterialStateProperty<double?> object) {
    return const NullableMaterialStatePropertyDoubleConverter().toJson(object)!;
  }
}
