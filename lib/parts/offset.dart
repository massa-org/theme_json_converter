part of theme_json_converter;

class NullableOffsetConverter
    extends JsonConverter<Offset?, Map<String, dynamic>?> {
  const NullableOffsetConverter();

  @override
  Offset? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return Offset(
      ((json['dx'] ?? 0) as num).toDouble(),
      ((json['dy'] ?? 0) as num).toDouble(),
    );
  }

  @override
  Map<String, dynamic>? toJson(Offset? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'dx': value.dx,
      'dy': value.dy,
    };

    throw 'Json_Unsuported_Value';
  }
}

class OffsetConverter extends JsonConverter<Offset, Map<String, dynamic>> {
  const OffsetConverter();

  @override
  Offset fromJson(Map<String, dynamic> json) {
    return const NullableOffsetConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(Offset value) {
    return const NullableOffsetConverter().toJson(value)!;
  }
}
