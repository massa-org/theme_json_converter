part of theme_json_converter;

class NullableMaterialStatePropertyOutlinedBorderConverter
    extends JsonConverter<MaterialStateProperty<OutlinedBorder?>?,
        Map<String, dynamic>?> {
  const NullableMaterialStatePropertyOutlinedBorderConverter();

  @override
  MaterialStateProperty<OutlinedBorder?>? fromJson(Map<String, dynamic>? json) {
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
          const NullableOutlinedBorderConverter().fromJson(json));
    } else {
      return MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return const NullableOutlinedBorderConverter()
              .fromJson(json['disabled']);
        } else if (states.contains(MaterialState.dragged)) {
          return const NullableOutlinedBorderConverter()
              .fromJson(json['dragged']);
        } else if (states.contains(MaterialState.error)) {
          return const NullableOutlinedBorderConverter()
              .fromJson(json['error']);
        } else if (states.contains(MaterialState.focused)) {
          return const NullableOutlinedBorderConverter()
              .fromJson(json['focused']);
        } else if (states.contains(MaterialState.hovered)) {
          return const NullableOutlinedBorderConverter()
              .fromJson(json['hovered']);
        } else if (states.contains(MaterialState.pressed)) {
          return const NullableOutlinedBorderConverter()
              .fromJson(json['pressed']);
        } else if (states.contains(MaterialState.selected)) {
          return const NullableOutlinedBorderConverter()
              .fromJson(json['selected']);
        } else {
          return const NullableOutlinedBorderConverter()
              .fromJson(json['empty']);
        }
      });
    }
  }

  @override
  Map<String, dynamic>? toJson(MaterialStateProperty<OutlinedBorder?>? value) {
    if (value == null) return null;

    return {
      'disabled': const NullableOutlinedBorderConverter().toJson(
        value.resolve({MaterialState.disabled}),
      ),
      'dragged': const NullableOutlinedBorderConverter()
          .toJson(value.resolve({MaterialState.dragged})),
      'empty':
          const NullableOutlinedBorderConverter().toJson(value.resolve({})),
      'error': const NullableOutlinedBorderConverter()
          .toJson(value.resolve({MaterialState.error})),
      'focused': const NullableOutlinedBorderConverter()
          .toJson(value.resolve({MaterialState.focused})),
      'hovered': const NullableOutlinedBorderConverter()
          .toJson(value.resolve({MaterialState.hovered})),
      'pressed': const NullableOutlinedBorderConverter()
          .toJson(value.resolve({MaterialState.pressed})),
      'selected': const NullableOutlinedBorderConverter().toJson(
        value.resolve({MaterialState.selected}),
      ),
    };

    throw 'Json_Unsuported_Value';
  }
}

class MaterialStatePropertyOutlinedBorderConverter extends JsonConverter<
    MaterialStateProperty<OutlinedBorder?>, Map<String, dynamic>> {
  const MaterialStatePropertyOutlinedBorderConverter();

  @override
  MaterialStateProperty<OutlinedBorder?> fromJson(Map<String, dynamic> json) {
    return const NullableMaterialStatePropertyOutlinedBorderConverter()
        .fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(MaterialStateProperty<OutlinedBorder?> value) {
    return const NullableMaterialStatePropertyOutlinedBorderConverter()
        .toJson(value)!;
  }
}
