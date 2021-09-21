part of theme_json_converter;

class NullableDecorationImageConverter
    extends JsonConverter<DecorationImage?, Map<String, dynamic>?> {
  const NullableDecorationImageConverter();

  @override
  DecorationImage? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return DecorationImage(
      alignment:
          const NullableAlignmentConverter().fromJson(json['alignment']) ??
              Alignment.center,
      centerSlice: const NullableRectConverter().fromJson(json['centerSlice']),
      // @unencodable
      // colorFilter
      fit: const NullableBoxFitConverter().fromJson(json['fit']),
      image: const NullableImageProviderConverter().fromJson(json['image'])!,
      matchTextDirection: (json['matchTextDirection'] as bool),
      repeat: const NullableImageRepeatConverter().fromJson(json['repeat']) ??
          ImageRepeat.noRepeat,
      scale: ((json['scale'] ?? 1.0) as num).toDouble(),
    );
  }

  @override
  Map<String, dynamic>? toJson(DecorationImage? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'alignment': const NullableAlignmentConverter()
          .toJson(value.alignment as Alignment?),
      'centerSlice': const NullableRectConverter().toJson(value.centerSlice),
      'fit': const NullableBoxFitConverter().toJson(value.fit),
      'image': const NullableImageProviderConverter().toJson(value.image),
      'matchTextDirection': value.matchTextDirection,
      'repeat': const NullableImageRepeatConverter().toJson(value.repeat),
      'scale': value.scale,
    };

    throw 'Json_Unsuported_Value';
  }
}

class DecorationImageConverter
    extends JsonConverter<DecorationImage, Map<String, dynamic>> {
  const DecorationImageConverter();

  @override
  DecorationImage fromJson(Map<String, dynamic> json) {
    return const NullableDecorationImageConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(DecorationImage value) {
    return const NullableDecorationImageConverter().toJson(value)!;
  }
}
