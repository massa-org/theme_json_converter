part of theme_json_converter;

class NullableMaterialStatePropertySizeConverter extends JsonConverter<
    MaterialStateProperty<Size?>?, Map<String, dynamic>?> {
  const NullableMaterialStatePropertySizeConverter();

  @override
  MaterialStateProperty<Size?>? fromJson(Map<String, dynamic>? json) {
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
          const NullableSizeConverter().fromJson(json));
    } else {
      return MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return const NullableSizeConverter().fromJson(json['disabled']);
        } else if (states.contains(MaterialState.dragged)) {
          return const NullableSizeConverter().fromJson(json['dragged']);
        } else if (states.contains(MaterialState.error)) {
          return const NullableSizeConverter().fromJson(json['error']);
        } else if (states.contains(MaterialState.focused)) {
          return const NullableSizeConverter().fromJson(json['focused']);
        } else if (states.contains(MaterialState.hovered)) {
          return const NullableSizeConverter().fromJson(json['hovered']);
        } else if (states.contains(MaterialState.pressed)) {
          return const NullableSizeConverter().fromJson(json['pressed']);
        } else if (states.contains(MaterialState.selected)) {
          return const NullableSizeConverter().fromJson(json['selected']);
        } else {
          return const NullableSizeConverter().fromJson(json['empty']);
        }
      });
    }
  }

  @override
  Map<String, dynamic>? toJson(MaterialStateProperty<Size?>? object) {
    if (object == null) return null;

    return {
      'disabled': const NullableSizeConverter()
          .toJson(object.resolve({MaterialState.disabled})),
      'dragged': const NullableSizeConverter()
          .toJson(object.resolve({MaterialState.dragged})),
      'empty': const NullableSizeConverter().toJson(object.resolve({})),
      'error': const NullableSizeConverter()
          .toJson(object.resolve({MaterialState.error})),
      'focused': const NullableSizeConverter()
          .toJson(object.resolve({MaterialState.focused})),
      'hovered': const NullableSizeConverter()
          .toJson(object.resolve({MaterialState.hovered})),
      'pressed': const NullableSizeConverter()
          .toJson(object.resolve({MaterialState.pressed})),
      'selected': const NullableSizeConverter()
          .toJson(object.resolve({MaterialState.selected})),
    };
  }
}

class MaterialStatePropertySizeConverter
    extends JsonConverter<MaterialStateProperty<Size?>, Map<String, dynamic>> {
  const MaterialStatePropertySizeConverter();

  @override
  MaterialStateProperty<Size?> fromJson(Map<String, dynamic> json) {
    return const NullableMaterialStatePropertySizeConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(MaterialStateProperty<Size?> object) {
    return const NullableMaterialStatePropertySizeConverter().toJson(object)!;
  }
}
