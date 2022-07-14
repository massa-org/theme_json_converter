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
  Map<String, dynamic>? toJson(DecorationImage? object) {
    if (object == null) return null;

    return <String, dynamic>{
      'alignment': const NullableAlignmentConverter()
          .toJson(object.alignment as Alignment?),
      'centerSlice': const NullableRectConverter().toJson(object.centerSlice),
      'fit': const NullableBoxFitConverter().toJson(object.fit),
      'image': const NullableImageProviderConverter().toJson(object.image),
      'matchTextDirection': object.matchTextDirection,
      'repeat': const NullableImageRepeatConverter().toJson(object.repeat),
      'scale': object.scale,
    };
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
  Map<String, dynamic> toJson(DecorationImage object) {
    return const NullableDecorationImageConverter().toJson(object)!;
  }
}
