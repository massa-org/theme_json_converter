part of theme_json_converter;

class NullableBorderSideConverter
    extends JsonConverter<BorderSide?, Map<String, dynamic>?> {
  const NullableBorderSideConverter();

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
  Map<String, dynamic>? toJson(BorderSide? object) {
    if (object == null) return null;

    return <String, dynamic>{
      'color': const NullableColorConverter().toJson(object.color),
      'style': const NullableBorderStyleConverter().toJson(object.style),
      'width': object.width,
    };
  }
}

class BorderSideConverter
    extends JsonConverter<BorderSide, Map<String, dynamic>> {
  const BorderSideConverter();

  @override
  BorderSide fromJson(Map<String, dynamic> json) {
    return const NullableBorderSideConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(BorderSide object) {
    return const NullableBorderSideConverter().toJson(object)!;
  }
}
