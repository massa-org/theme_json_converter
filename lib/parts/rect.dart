part of theme_json_converter;

class NullableRectConverter
    extends JsonConverter<Rect?, Map<String, dynamic>?> {
  const NullableRectConverter();

  @override
  Rect? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    String? type = json['type'];
    switch (type) {
      case 'center':
        return Rect.fromCenter(
          center: const NullableOffsetConverter().fromJson(
            json['center'],
          )!,
          height: (json['height'] as num).toDouble(),
          width: (json['width'] as num).toDouble(),
        );

      case 'circle':
        return Rect.fromCircle(
          center: const NullableOffsetConverter().fromJson(
            json['center'],
          )!,
          radius: (json['radius'] as num).toDouble(),
        );

      case 'largest':
        return Rect.largest;

      case 'ltrb':
        return Rect.fromLTRB(
          (json['left'] as num).toDouble(),
          (json['top'] as num).toDouble(),
          (json['right'] as num).toDouble(),
          (json['bottom'] as num).toDouble(),
        );

      case 'ltwh':
        return Rect.fromLTWH(
          (json['left'] as num).toDouble(),
          (json['top'] as num).toDouble(),
          (json['width'] as num).toDouble(),
          (json['height'] as num).toDouble(),
        );

      case 'points':
        return Rect.fromPoints(
          const NullableOffsetConverter().fromJson(
            json['a'],
          )!,
          const NullableOffsetConverter().fromJson(
            json['b'],
          )!,
        );

      case 'zero':
        return Rect.zero;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  Map<String, dynamic>? toJson(Rect? value) {
    if (value == null) return null;

    return {
      'bottom': value.bottom,
      'left': value.left,
      'right': value.right,
      'top': value.top,
      'type': 'ltrb',
    };

    throw 'Json_Unsuported_Value';
  }
}

class RectConverter extends JsonConverter<Rect, Map<String, dynamic>> {
  const RectConverter();

  @override
  Rect fromJson(Map<String, dynamic> json) {
    return const NullableRectConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(Rect value) {
    return const NullableRectConverter().toJson(value)!;
  }
}
