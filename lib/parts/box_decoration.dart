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
  Map<String, dynamic>? toJson(BoxDecoration? object) {
    if (object == null) return null;

    return {
      'backgroundBlendMode':
          const NullableBlendModeConverter().toJson(object.backgroundBlendMode),
      'border':
          const NullableBoxBorderConverter().toJson(object.border as Border?),
      'borderRadius': const NullableBorderRadiusConverter()
          .toJson(object.borderRadius as BorderRadius?),
      'boxShadow': _encodeList(
        object.boxShadow,
        (object) => const NullableBoxShadowConverter().toJson(object),
      ),
      'color': const NullableColorConverter().toJson(object.color),
      'image': const NullableDecorationImageConverter().toJson(object.image),
      'gradient': const NullableGradientConverter().toJson(object.gradient),
      'shape': const NullableBoxShapeConverter().toJson(object.shape),
    };
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
  Map<String, dynamic> toJson(BoxDecoration object) {
    return const NullableBoxDecorationConverter().toJson(object)!;
  }
}
