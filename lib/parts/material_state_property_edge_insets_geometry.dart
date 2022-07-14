part of theme_json_converter;

class NullableMaterialStatePropertyEdgeInsetsGeometryConverter
    extends JsonConverter<MaterialStateProperty<EdgeInsetsGeometry?>?,
        Map<String, dynamic>?> {
  const NullableMaterialStatePropertyEdgeInsetsGeometryConverter();

  @override
  MaterialStateProperty<EdgeInsetsGeometry?>? fromJson(
      Map<String, dynamic>? json) {
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
          const NullableEdgeInsetsGeometryConverter().fromJson(json));
    } else {
      return MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return const NullableEdgeInsetsGeometryConverter()
              .fromJson(json['disabled']);
        } else if (states.contains(MaterialState.dragged)) {
          return const NullableEdgeInsetsGeometryConverter()
              .fromJson(json['dragged']);
        } else if (states.contains(MaterialState.error)) {
          return const NullableEdgeInsetsGeometryConverter()
              .fromJson(json['error']);
        } else if (states.contains(MaterialState.focused)) {
          return const NullableEdgeInsetsGeometryConverter()
              .fromJson(json['focused']);
        } else if (states.contains(MaterialState.hovered)) {
          return const NullableEdgeInsetsGeometryConverter()
              .fromJson(json['hovered']);
        } else if (states.contains(MaterialState.pressed)) {
          return const NullableEdgeInsetsGeometryConverter()
              .fromJson(json['pressed']);
        } else if (states.contains(MaterialState.selected)) {
          return const NullableEdgeInsetsGeometryConverter()
              .fromJson(json['selected']);
        } else {
          return const NullableEdgeInsetsGeometryConverter()
              .fromJson(json['empty']);
        }
      });
    }
  }

  @override
  Map<String, dynamic>? toJson(
      MaterialStateProperty<EdgeInsetsGeometry?>? object) {
    if (object == null) return null;

    return {
      'disabled': const NullableEdgeInsetsGeometryConverter().toJson(
        object.resolve({MaterialState.disabled}) as EdgeInsets?,
      ),
      'dragged': const NullableEdgeInsetsGeometryConverter().toJson(
        object.resolve({MaterialState.dragged}) as EdgeInsets?,
      ),
      'empty': const NullableEdgeInsetsGeometryConverter().toJson(
        object.resolve({}) as EdgeInsets?,
      ),
      'error': const NullableEdgeInsetsGeometryConverter().toJson(
        object.resolve({MaterialState.error}) as EdgeInsets?,
      ),
      'focused': const NullableEdgeInsetsGeometryConverter().toJson(
        object.resolve({MaterialState.focused}) as EdgeInsets?,
      ),
      'hovered': const NullableEdgeInsetsGeometryConverter().toJson(
        object.resolve({MaterialState.hovered}) as EdgeInsets?,
      ),
      'pressed': const NullableEdgeInsetsGeometryConverter().toJson(
        object.resolve({MaterialState.pressed}) as EdgeInsets?,
      ),
      'selected': const NullableEdgeInsetsGeometryConverter().toJson(
        object.resolve({MaterialState.selected}) as EdgeInsets?,
      ),
    };
  }
}

class MaterialStatePropertyEdgeInsetsGeometryConverter extends JsonConverter<
    MaterialStateProperty<EdgeInsetsGeometry?>, Map<String, dynamic>> {
  const MaterialStatePropertyEdgeInsetsGeometryConverter();

  @override
  MaterialStateProperty<EdgeInsetsGeometry?> fromJson(
      Map<String, dynamic> json) {
    return const NullableMaterialStatePropertyEdgeInsetsGeometryConverter()
        .fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(
      MaterialStateProperty<EdgeInsetsGeometry?> object) {
    return const NullableMaterialStatePropertyEdgeInsetsGeometryConverter()
        .toJson(object)!;
  }
}
