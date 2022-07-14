part of theme_json_converter;

class NullableMaterialStatePropertyTextStyleConverter extends JsonConverter<
    MaterialStateProperty<TextStyle?>?, Map<String, dynamic>?> {
  const NullableMaterialStatePropertyTextStyleConverter();

  @override
  MaterialStateProperty<TextStyle?>? fromJson(Map<String, dynamic>? json) {
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
          const NullableTextStyleConverter().fromJson(json));
    } else {
      return MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return const NullableTextStyleConverter().fromJson(json['disabled']);
        } else if (states.contains(MaterialState.dragged)) {
          return const NullableTextStyleConverter().fromJson(json['dragged']);
        } else if (states.contains(MaterialState.error)) {
          return const NullableTextStyleConverter().fromJson(json['error']);
        } else if (states.contains(MaterialState.focused)) {
          return const NullableTextStyleConverter().fromJson(json['focused']);
        } else if (states.contains(MaterialState.hovered)) {
          return const NullableTextStyleConverter().fromJson(json['hovered']);
        } else if (states.contains(MaterialState.pressed)) {
          return const NullableTextStyleConverter().fromJson(json['pressed']);
        } else if (states.contains(MaterialState.selected)) {
          return const NullableTextStyleConverter().fromJson(json['selected']);
        } else {
          return const NullableTextStyleConverter().fromJson(json['empty']);
        }
      });
    }
  }

  @override
  Map<String, dynamic>? toJson(MaterialStateProperty<TextStyle?>? object) {
    if (object == null) return null;

    return {
      'disabled': const NullableTextStyleConverter()
          .toJson(object.resolve({MaterialState.disabled})),
      'dragged': const NullableTextStyleConverter()
          .toJson(object.resolve({MaterialState.dragged})),
      'empty': const NullableTextStyleConverter().toJson(object.resolve({})),
      'error': const NullableTextStyleConverter()
          .toJson(object.resolve({MaterialState.error})),
      'focused': const NullableTextStyleConverter()
          .toJson(object.resolve({MaterialState.focused})),
      'hovered': const NullableTextStyleConverter()
          .toJson(object.resolve({MaterialState.hovered})),
      'pressed': const NullableTextStyleConverter()
          .toJson(object.resolve({MaterialState.pressed})),
      'selected': const NullableTextStyleConverter()
          .toJson(object.resolve({MaterialState.selected})),
    };
  }
}

class MaterialStatePropertyTextStyleConverter extends JsonConverter<
    MaterialStateProperty<TextStyle?>, Map<String, dynamic>> {
  const MaterialStatePropertyTextStyleConverter();

  @override
  MaterialStateProperty<TextStyle?> fromJson(Map<String, dynamic> json) {
    return const NullableMaterialStatePropertyTextStyleConverter()
        .fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(MaterialStateProperty<TextStyle?> object) {
    return const NullableMaterialStatePropertyTextStyleConverter()
        .toJson(object)!;
  }
}
