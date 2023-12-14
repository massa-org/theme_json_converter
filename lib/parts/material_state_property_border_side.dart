part of theme_json_converter;

class NullableMaterialStatePropertyBorderSideConverter
    extends JsonConverter<MaterialStateProperty<BorderSide?>?, dynamic> {
  const NullableMaterialStatePropertyBorderSideConverter();

  @override
  MaterialStateProperty<BorderSide?>? fromJson(json) =>
      const TypedNullableMaterialStatePropertyBorderSideConverter()
          .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableMaterialStatePropertyBorderSideConverter()
          .toJson(object);
}

class TypedNullableMaterialStatePropertyBorderSideConverter
    extends JsonConverter<MaterialStateProperty<BorderSide?>?,
        Map<String, dynamic>?> {
  const TypedNullableMaterialStatePropertyBorderSideConverter();

  @override
  MaterialStateProperty<BorderSide?>? fromJson(Map<String, dynamic>? json) {
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
          const NullableBorderSideConverter().fromJson(json));
    } else {
      return MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return const NullableBorderSideConverter().fromJson(json['disabled']);
        } else if (states.contains(MaterialState.dragged)) {
          return const NullableBorderSideConverter().fromJson(json['dragged']);
        } else if (states.contains(MaterialState.error)) {
          return const NullableBorderSideConverter().fromJson(json['error']);
        } else if (states.contains(MaterialState.focused)) {
          return const NullableBorderSideConverter().fromJson(json['focused']);
        } else if (states.contains(MaterialState.hovered)) {
          return const NullableBorderSideConverter().fromJson(json['hovered']);
        } else if (states.contains(MaterialState.pressed)) {
          return const NullableBorderSideConverter().fromJson(json['pressed']);
        } else if (states.contains(MaterialState.selected)) {
          return const NullableBorderSideConverter().fromJson(json['selected']);
        } else {
          return const NullableBorderSideConverter().fromJson(json['empty']);
        }
      });
    }
  }

  @override
  Map<String, dynamic>? toJson(MaterialStateProperty<BorderSide?>? value) {
    if (value == null) return null;

    return {
      'disabled': const NullableBorderSideConverter()
          .toJson(value.resolve({MaterialState.disabled})),
      'dragged': const NullableBorderSideConverter()
          .toJson(value.resolve({MaterialState.dragged})),
      'empty': const NullableBorderSideConverter().toJson(value.resolve({})),
      'error': const NullableBorderSideConverter()
          .toJson(value.resolve({MaterialState.error})),
      'focused': const NullableBorderSideConverter()
          .toJson(value.resolve({MaterialState.focused})),
      'hovered': const NullableBorderSideConverter()
          .toJson(value.resolve({MaterialState.hovered})),
      'pressed': const NullableBorderSideConverter()
          .toJson(value.resolve({MaterialState.pressed})),
      'selected': const NullableBorderSideConverter()
          .toJson(value.resolve({MaterialState.selected})),
    };
  }
}

class MaterialStatePropertyBorderSideConverter
    extends JsonConverter<MaterialStateProperty<BorderSide?>, dynamic> {
  const MaterialStatePropertyBorderSideConverter();

  @override
  MaterialStateProperty<BorderSide?> fromJson(json) =>
      const TypedMaterialStatePropertyBorderSideConverter()
          .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) =>
      const TypedMaterialStatePropertyBorderSideConverter().toJson(object);
}

class TypedMaterialStatePropertyBorderSideConverter extends JsonConverter<
    MaterialStateProperty<BorderSide?>, Map<String, dynamic>> {
  const TypedMaterialStatePropertyBorderSideConverter();

  @override
  MaterialStateProperty<BorderSide?> fromJson(Map<String, dynamic> json) {
    return const NullableMaterialStatePropertyBorderSideConverter()
        .fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(MaterialStateProperty<BorderSide?> value) {
    return const NullableMaterialStatePropertyBorderSideConverter()
        .toJson(value)!;
  }
}
