part of theme_json_converter;

class NullableBorderSideConverter extends JsonConverter<BorderSide?, dynamic> {
  const NullableBorderSideConverter();

  @override
  BorderSide? fromJson(json) => const TypedNullableBorderSideConverter()
      .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableBorderSideConverter().toJson(object);
}

class TypedNullableBorderSideConverter
    extends JsonConverter<BorderSide?, Map<String, dynamic>?> {
  const TypedNullableBorderSideConverter();
  @override
  BorderSide? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return BorderSide(
      color: const NullableColorConverter().fromJson(
            json['color'],
          ) ??
          #ff000000 as Color,
      style: const NullableBorderStyleConverter().fromJson(
            json['style'],
          ) ??
          BorderStyle.solid,
      width: ((json['width'] ?? 1.0) as num).toDouble(),
    );
  }

  @override
  Map<String, dynamic>? toJson(BorderSide? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'color': const NullableColorConverter().toJson(value.color),
      'style': const NullableBorderStyleConverter().toJson(value.style),
      'width': value.width,
    };

    throw 'Json_Unsuported_Value';
  }
}

class BorderSideConverter extends JsonConverter<BorderSide, dynamic> {
  const BorderSideConverter();

  @override
  BorderSide fromJson(json) => const TypedBorderSideConverter()
      .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) => const TypedBorderSideConverter().toJson(object);
}

class TypedBorderSideConverter
    extends JsonConverter<BorderSide, Map<String, dynamic>> {
  const TypedBorderSideConverter();
  @override
  BorderSide fromJson(Map<String, dynamic> json) {
    return const NullableBorderSideConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(BorderSide value) {
    return const NullableBorderSideConverter().toJson(value)!;
  }
}
