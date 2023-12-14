part of theme_json_converter;

class NullableEdgeInsetsGeometryConverter
    extends JsonConverter<EdgeInsetsGeometry?, dynamic> {
  const NullableEdgeInsetsGeometryConverter();

  @override
  EdgeInsetsGeometry? fromJson(json) =>
      const TypedNullableEdgeInsetsGeometryConverter()
          .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableEdgeInsetsGeometryConverter().toJson(object);
}

class TypedNullableEdgeInsetsGeometryConverter
    extends JsonConverter<EdgeInsetsGeometry?, Map<String, dynamic>?> {
  const TypedNullableEdgeInsetsGeometryConverter();
  @override
  EdgeInsetsGeometry? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    if (json is String || json is double || json is int) {
      return EdgeInsets.all((json as num).toDouble());
    } else if (json is List) {
      if (json.length == 2) {
        return EdgeInsets.symmetric(
          horizontal: ((json[0] ?? 0) as num).toDouble(),
          vertical: ((json[1] ?? 0) as num).toDouble(),
        );
      } else if (json.length == 4) {
        return EdgeInsets.fromLTRB(
          (json[0] as num).toDouble(),
          (json[1] as num).toDouble(),
          (json[2] as num).toDouble(),
          (json[3] as num).toDouble(),
        );
      }
    } else {
      return EdgeInsets.only(
        bottom: ((json['bottom'] ?? 0.0) as num).toDouble(),
        left: ((json['left'] ?? 0.0) as num).toDouble(),
        right: ((json['right'] ?? 0.0) as num).toDouble(),
        top: ((json['top'] ?? 0.0) as num).toDouble(),
      );
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  Map<String, dynamic>? toJson(EdgeInsetsGeometry? value) {
    if (value == null) return null;
    if (value is EdgeInsets) {
      return <String, dynamic>{
        'bottom': value.bottom,
        'left': value.left,
        'right': value.right,
        'top': value.top,
      };
    }

    throw 'Json_Unsuported_Value';
  }
}

class EdgeInsetsGeometryConverter
    extends JsonConverter<EdgeInsetsGeometry, dynamic> {
  const EdgeInsetsGeometryConverter();

  @override
  EdgeInsetsGeometry fromJson(json) => const TypedEdgeInsetsGeometryConverter()
      .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) =>
      const TypedEdgeInsetsGeometryConverter().toJson(object);
}

class TypedEdgeInsetsGeometryConverter
    extends JsonConverter<EdgeInsetsGeometry, Map<String, dynamic>> {
  const TypedEdgeInsetsGeometryConverter();
  @override
  EdgeInsetsGeometry fromJson(Map<String, dynamic> json) {
    return const NullableEdgeInsetsGeometryConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(EdgeInsetsGeometry value) {
    return const NullableEdgeInsetsGeometryConverter().toJson(value)!;
  }
}
