part of theme_json_converter;

class NullableMaterialStatePropertyMouseCursorConverter extends JsonConverter<
    MaterialStateProperty<MouseCursor?>?, Map<String, dynamic>?> {
  const NullableMaterialStatePropertyMouseCursorConverter();

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
  Map<String, dynamic>? toJson(MaterialStateProperty<MouseCursor?>? object) {
    if (object == null) return null;

    return {
      'disabled': const NullableMouseCursorConverter()
          .toJson(object.resolve({MaterialState.disabled})),
      'dragged': const NullableMouseCursorConverter()
          .toJson(object.resolve({MaterialState.dragged})),
      'empty': const NullableMouseCursorConverter().toJson(object.resolve({})),
      'error': const NullableMouseCursorConverter()
          .toJson(object.resolve({MaterialState.error})),
      'focused': const NullableMouseCursorConverter()
          .toJson(object.resolve({MaterialState.focused})),
      'hovered': const NullableMouseCursorConverter()
          .toJson(object.resolve({MaterialState.hovered})),
      'pressed': const NullableMouseCursorConverter()
          .toJson(object.resolve({MaterialState.pressed})),
      'selected': const NullableMouseCursorConverter()
          .toJson(object.resolve({MaterialState.selected})),
    };
  }
}

class MaterialStatePropertyMouseCursorConverter extends JsonConverter<
    MaterialStateProperty<MouseCursor?>, Map<String, dynamic>> {
  const MaterialStatePropertyMouseCursorConverter();

  @override
  MaterialStateProperty<MouseCursor?> fromJson(Map<String, dynamic> json) {
    return const NullableMaterialStatePropertyMouseCursorConverter()
        .fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(MaterialStateProperty<MouseCursor?> object) {
    return const NullableMaterialStatePropertyMouseCursorConverter()
        .toJson(object)!;
  }
}
