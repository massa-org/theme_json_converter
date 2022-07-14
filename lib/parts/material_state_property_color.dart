part of theme_json_converter;

class NullableMaterialStatePropertyColorConverter extends JsonConverter<
    MaterialStateProperty<Color?>?, Map<String, dynamic>?> {
  const NullableMaterialStatePropertyColorConverter();

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
  Map<String, dynamic>? toJson(MaterialStateProperty<Color?>? object) {
    if (object == null) return null;

    return {
      'disabled': const NullableColorConverter()
          .toJson(object.resolve({MaterialState.disabled})),
      'dragged': const NullableColorConverter()
          .toJson(object.resolve({MaterialState.dragged})),
      'empty': const NullableColorConverter().toJson(object.resolve({})),
      'error': const NullableColorConverter()
          .toJson(object.resolve({MaterialState.error})),
      'focused': const NullableColorConverter()
          .toJson(object.resolve({MaterialState.focused})),
      'hovered': const NullableColorConverter()
          .toJson(object.resolve({MaterialState.hovered})),
      'pressed': const NullableColorConverter()
          .toJson(object.resolve({MaterialState.pressed})),
      'selected': const NullableColorConverter()
          .toJson(object.resolve({MaterialState.selected})),
    };
  }
}

class MaterialStatePropertyColorConverter
    extends JsonConverter<MaterialStateProperty<Color?>, Map<String, dynamic>> {
  const MaterialStatePropertyColorConverter();

  @override
  MaterialStateProperty<Color?> fromJson(Map<String, dynamic> json) {
    return const NullableMaterialStatePropertyColorConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(MaterialStateProperty<Color?> object) {
    return const NullableMaterialStatePropertyColorConverter().toJson(object)!;
  }
}
