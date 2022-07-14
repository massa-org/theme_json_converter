part of theme_json_converter;

class NullableSizeConverter
    extends JsonConverter<Size?, Map<String, dynamic>?> {
  const NullableSizeConverter();

  @override
  Size? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return Size(
      (json['width'] as num).toDouble(),
      (json['height'] as num).toDouble(),
    );
  }

  @override
  Map<String, dynamic>? toJson(Size? object) {
    if (object == null) return null;

    return {
      'height': object.height,
      'width': object.width,
    };
  }
}

class SizeConverter extends JsonConverter<Size, Map<String, dynamic>> {
  const SizeConverter();

  @override
  Size fromJson(Map<String, dynamic> json) {
    return const NullableSizeConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(Size object) {
    return const NullableSizeConverter().toJson(object)!;
  }
}
