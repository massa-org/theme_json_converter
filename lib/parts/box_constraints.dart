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
  Map<String, dynamic>? toJson(BoxConstraints? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'maxHeight': value.maxHeight == double.infinity ? null : value.maxHeight,
      'maxWidth': value.maxWidth == double.infinity ? null : value.maxWidth,
      'minHeight': value.minHeight,
      'minWidth': value.minWidth,
    };

    throw 'Json_Unsuported_Value';
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
  Map<String, dynamic> toJson(BoxConstraints value) {
    return const NullableBoxConstraintsConverter().toJson(value)!;
  }
}
