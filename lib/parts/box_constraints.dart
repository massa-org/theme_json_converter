part of theme_json_converter;

class NullableBoxConstraintsConverter
    extends JsonConverter<BoxConstraints?, Map<String, dynamic>?> {
  const NullableBoxConstraintsConverter();

  @override
  BoxConstraints? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return BoxConstraints(
      maxHeight: ((json['maxHeight'] ?? double.infinity) as num).toDouble(),
      maxWidth: ((json['maxWidth'] ?? double.infinity) as num).toDouble(),
      minHeight: ((json['minHeight'] ?? 0) as num).toDouble(),
      minWidth: ((json['minWidth'] ?? 0) as num).toDouble(),
    );
  }

  @override
  Map<String, dynamic>? toJson(BoxConstraints? object) {
    if (object == null) return null;

    return <String, dynamic>{
      'maxHeight':
          object.maxHeight == double.infinity ? null : object.maxHeight,
      'maxWidth': object.maxWidth == double.infinity ? null : object.maxWidth,
      'minHeight': object.minHeight,
      'minWidth': object.minWidth,
    };
  }
}

class BoxConstraintsConverter
    extends JsonConverter<BoxConstraints, Map<String, dynamic>> {
  const BoxConstraintsConverter();

  @override
  BoxConstraints fromJson(Map<String, dynamic> json) {
    return const NullableBoxConstraintsConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(BoxConstraints object) {
    return const NullableBoxConstraintsConverter().toJson(object)!;
  }
}
