part of theme_json_converter;

class NullableBorderRadiusConverter
    extends JsonConverter<BorderRadius?, Map<String, dynamic>?> {
  const NullableBorderRadiusConverter();

  @override
  BorderRadius? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    String? type = json['type'];

    switch (type) {
      case 'all':
        return BorderRadius.all(
            const NullableRadiusConverter().fromJson(json['radius']) ??
                Radius.zero);

      case 'circular':
        return BorderRadius.circular(
          (json['radius'] as num).toDouble(),
        );

      case 'horizontal':
        return BorderRadius.horizontal(
          left: const NullableRadiusConverter().fromJson(
                json['left'],
              ) ??
              Radius.zero,
          right: const NullableRadiusConverter().fromJson(
                json['right'],
              ) ??
              Radius.zero,
        );

      case 'only':
        return BorderRadius.only(
          bottomLeft: const NullableRadiusConverter().fromJson(
                json['bottomLeft'],
              ) ??
              Radius.zero,
          bottomRight: const NullableRadiusConverter().fromJson(
                json['bottomRight'],
              ) ??
              Radius.zero,
          topLeft: const NullableRadiusConverter().fromJson(
                json['topLeft'],
              ) ??
              Radius.zero,
          topRight: const NullableRadiusConverter().fromJson(
                json['topRight'],
              ) ??
              Radius.zero,
        );

      case 'vertical':
        return BorderRadius.vertical(
          bottom: const NullableRadiusConverter().fromJson(
                json['bottom'],
              ) ??
              Radius.zero,
          top: const NullableRadiusConverter().fromJson(
                json['top'],
              ) ??
              Radius.zero,
        );
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  Map<String, dynamic>? toJson(BorderRadius? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'bottomLeft': const NullableRadiusConverter().toJson(value.bottomLeft),
      'bottomRight': const NullableRadiusConverter().toJson(value.bottomRight),
      'topLeft': const NullableRadiusConverter().toJson(value.topLeft),
      'topRight': const NullableRadiusConverter().toJson(value.topRight),
      'type': 'only',
    };

    throw 'Json_Unsuported_Value';
  }
}

class BorderRadiusConverter
    extends JsonConverter<BorderRadius, Map<String, dynamic>> {
  const BorderRadiusConverter();

  @override
  BorderRadius fromJson(Map<String, dynamic> json) {
    return const NullableBorderRadiusConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(BorderRadius value) {
    return const NullableBorderRadiusConverter().toJson(value)!;
  }
}
