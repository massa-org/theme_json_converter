part of theme_json_converter;

class NullableEdgeInsetsGeometryConverter
    extends JsonConverter<EdgeInsetsGeometry?, Map<String, dynamic>?> {
  const NullableEdgeInsetsGeometryConverter();

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
  Map<String, dynamic>? toJson(EdgeInsetsGeometry? object) {
    if (object == null) return null;
    if (object is EdgeInsets) {
      return <String, dynamic>{
        'bottom': object.bottom,
        'left': object.left,
        'right': object.right,
        'top': object.top,
      };
    }

    throw 'Json_Unsuported_Value';
  }
}

class EdgeInsetsGeometryConverter
    extends JsonConverter<EdgeInsetsGeometry, Map<String, dynamic>> {
  const EdgeInsetsGeometryConverter();

  @override
  EdgeInsetsGeometry fromJson(Map<String, dynamic> json) {
    return const NullableEdgeInsetsGeometryConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(EdgeInsetsGeometry object) {
    return const NullableEdgeInsetsGeometryConverter().toJson(object)!;
  }
}
