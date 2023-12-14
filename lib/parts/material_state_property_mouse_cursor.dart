part of theme_json_converter;

class NullableMaterialStatePropertyMouseCursorConverter
    extends JsonConverter<MaterialStateProperty<MouseCursor?>?, dynamic> {
  const NullableMaterialStatePropertyMouseCursorConverter();

  @override
  MaterialStateProperty<MouseCursor?>? fromJson(json) =>
      const TypedNullableMaterialStatePropertyMouseCursorConverter()
          .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableMaterialStatePropertyMouseCursorConverter()
          .toJson(object);
}

class TypedNullableMaterialStatePropertyMouseCursorConverter
    extends JsonConverter<MaterialStateProperty<MouseCursor?>?,
        Map<String, dynamic>?> {
  const TypedNullableMaterialStatePropertyMouseCursorConverter();

  @override
  MaterialStateProperty<MouseCursor?>? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;
    var testValues = [
      'disabled',
      'dragged',
      'empty',
      'error',
      'focused',
      'hovered',
      'pressed',
      'selected',
    ];

    var isMsp = false;
    for (var key in json.keys) {
      if (testValues.contains(key)) {
        isMsp = true;
      }
    }

    if (isMsp != true) {
      return MaterialStateProperty.all(
          const NullableMouseCursorConverter().fromJson(json));
    } else {
      return MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return const NullableMouseCursorConverter()
              .fromJson(json['disabled']);
        } else if (states.contains(MaterialState.dragged)) {
          return const NullableMouseCursorConverter().fromJson(json['dragged']);
        } else if (states.contains(MaterialState.error)) {
          return const NullableMouseCursorConverter().fromJson(json['error']);
        } else if (states.contains(MaterialState.focused)) {
          return const NullableMouseCursorConverter().fromJson(json['focused']);
        } else if (states.contains(MaterialState.hovered)) {
          return const NullableMouseCursorConverter().fromJson(json['hovered']);
        } else if (states.contains(MaterialState.pressed)) {
          return const NullableMouseCursorConverter().fromJson(json['pressed']);
        } else if (states.contains(MaterialState.selected)) {
          return const NullableMouseCursorConverter()
              .fromJson(json['selected']);
        } else {
          return const NullableMouseCursorConverter().fromJson(json['empty']);
        }
      });
    }
  }

  @override
  Map<String, dynamic>? toJson(MaterialStateProperty<MouseCursor?>? value) {
    if (value == null) return null;

    return {
      'disabled': const NullableMouseCursorConverter()
          .toJson(value.resolve({MaterialState.disabled})),
      'dragged': const NullableMouseCursorConverter()
          .toJson(value.resolve({MaterialState.dragged})),
      'empty': const NullableMouseCursorConverter().toJson(value.resolve({})),
      'error': const NullableMouseCursorConverter()
          .toJson(value.resolve({MaterialState.error})),
      'focused': const NullableMouseCursorConverter()
          .toJson(value.resolve({MaterialState.focused})),
      'hovered': const NullableMouseCursorConverter()
          .toJson(value.resolve({MaterialState.hovered})),
      'pressed': const NullableMouseCursorConverter()
          .toJson(value.resolve({MaterialState.pressed})),
      'selected': const NullableMouseCursorConverter()
          .toJson(value.resolve({MaterialState.selected})),
    };

    throw 'Json_Unsuported_Value';
  }
}

class MaterialStatePropertyMouseCursorConverter
    extends JsonConverter<MaterialStateProperty<MouseCursor?>, dynamic> {
  const MaterialStatePropertyMouseCursorConverter();

  @override
  MaterialStateProperty<MouseCursor?> fromJson(json) =>
      const MaterialStatePropertyMouseCursorConverter()
          .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) =>
      const MaterialStatePropertyMouseCursorConverter().toJson(object);
}

class TypedMaterialStatePropertyMouseCursorConverter extends JsonConverter<
    MaterialStateProperty<MouseCursor?>, Map<String, dynamic>> {
  const TypedMaterialStatePropertyMouseCursorConverter();

  @override
  MaterialStateProperty<MouseCursor?> fromJson(Map<String, dynamic> json) {
    return const NullableMaterialStatePropertyMouseCursorConverter()
        .fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(MaterialStateProperty<MouseCursor?> value) {
    return const NullableMaterialStatePropertyMouseCursorConverter()
        .toJson(value)!;
  }
}
