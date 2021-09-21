part of theme_json_converter;

class NullableBoxDecorationConverter
    extends JsonConverter<BoxDecoration?, Map<String, dynamic>?> {
  const NullableBoxDecorationConverter();

  @override
  BoxDecoration? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return BoxDecoration(
      backgroundBlendMode: const NullableBlendModeConverter().fromJson(
        json['backgroundBlendMode'],
      ),
      border: const NullableBoxBorderConverter().fromJson(
        json['border'],
      ),
      borderRadius: const NullableBorderRadiusConverter().fromJson(
        json['borderRadius'],
      ),
      boxShadow: _decodeDynamicList(
        json['boxShadow'],
        (json) => const NullableBoxShadowConverter().fromJson(json)!,
      ),
      color: const NullableColorConverter().fromJson(
        json['color'],
      ),
      gradient: const NullableGradientConverter().fromJson(
        json['gradient'],
      ),
      image: const NullableDecorationImageConverter().fromJson(
        json['image'],
      ),
      shape: const NullableBoxShapeConverter().fromJson(
            json['shape'],
          ) ??
          BoxShape.rectangle,
    );
  }

  @override
  Map<String, dynamic>? toJson(BoxDecoration? value) {
    if (value == null) return null;

    return {
      'backgroundBlendMode':
          const NullableBlendModeConverter().toJson(value.backgroundBlendMode),
      'border':
          const NullableBoxBorderConverter().toJson(value.border as Border?),
      'borderRadius': const NullableBorderRadiusConverter()
          .toJson(value.borderRadius as BorderRadius?),
      'boxShadow': _encodeList(
        value.boxShadow,
        (value) => const NullableBoxShadowConverter().toJson(value),
      ),
      'color': const NullableColorConverter().toJson(value.color),
      'image': const NullableDecorationImageConverter().toJson(value.image),
      'gradient': const NullableGradientConverter().toJson(value.gradient),
      'shape': const NullableBoxShapeConverter().toJson(value.shape),
    };

    throw 'Json_Unsuported_Value';
  }
}

class BoxDecorationConverter
    extends JsonConverter<BoxDecoration, Map<String, dynamic>> {
  const BoxDecorationConverter();

  @override
  BoxDecoration fromJson(Map<String, dynamic> json) {
    return const NullableBoxDecorationConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(BoxDecoration value) {
    return const NullableBoxDecorationConverter().toJson(value)!;
  }
}
