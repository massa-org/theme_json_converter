part of theme_json_converter;

class NullableSizeConverter extends JsonConverter<Size?, dynamic> {
  const NullableSizeConverter();

  @override
  Size? fromJson(json) => const TypedNullableSizeConverter()
      .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) => const TypedNullableSizeConverter().toJson(object);
}

class TypedNullableSizeConverter
    extends JsonConverter<Size?, Map<String, dynamic>?> {
  const TypedNullableSizeConverter();
  @override
  Size? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return Size(
      (json['width'] as num).toDouble(),
      (json['height'] as num).toDouble(),
    );
  }

  @override
  Map<String, dynamic>? toJson(Size? value) {
    if (value == null) return null;

    return {
      'height': value.height,
      'width': value.width,
    };

    throw 'Json_Unsuported_Value';
  }
}

class SizeConverter extends JsonConverter<Size, dynamic> {
  const SizeConverter();

  @override
  Size fromJson(json) =>
      const TypedSizeConverter().fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) => const TypedSizeConverter().toJson(object);
}

class TypedSizeConverter extends JsonConverter<Size, Map<String, dynamic>> {
  const TypedSizeConverter();
  @override
  Size fromJson(Map<String, dynamic> json) {
    return const NullableSizeConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(Size value) {
    return const NullableSizeConverter().toJson(value)!;
  }
}
