part of theme_json_converter;

class NullableImageProviderConverter
    extends JsonConverter<ImageProvider?, dynamic> {
  const NullableImageProviderConverter();

  @override
  ImageProvider? fromJson(json) => const TypedNullableImageProviderConverter()
      .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableImageProviderConverter().toJson(object);
}

class TypedNullableImageProviderConverter
    extends JsonConverter<ImageProvider?, Map<String, dynamic>?> {
  const TypedNullableImageProviderConverter();
  @override
  ImageProvider? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    switch (json['type']) {
      case 'asset':
        return AssetImage(
          json['assetName'],
          package: json['package'],
        );

      case 'memory':
        return MemoryImage(
          base64Decode(json['bytes']),
          scale: ((json['scale'] ?? 1.0) as num).toDouble(),
        );

      case 'network':
        return NetworkImage(
          json['url'],
          headers: json['headers'],
          scale: ((json['scale'] ?? 1.0) as num).toDouble(),
        );
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  Map<String, dynamic>? toJson(ImageProvider? value) {
    if (value == null) return null;

    assert(
        value is AssetImage || value is MemoryImage || value is NetworkImage);
    if (value is AssetImage) {
      return <String, dynamic>{
        'assetName': value.assetName,
        'package': value.package,
        'type': 'asset',
      };
    } else if (value is MemoryImage) {
      return <String, dynamic>{
        'bytes': base64Encode(value.bytes),
        'scale': value.scale,
        'type': 'memory',
      };
    } else if (value is NetworkImage) {
      return <String, dynamic>{
        'headers': value.headers,
        'scale': value.scale,
        'type': 'network',
        'url': value.url,
      };
    }

    throw 'Json_Unsuported_Value';
  }
}

class ImageProviderConverter extends JsonConverter<ImageProvider, dynamic> {
  const ImageProviderConverter();

  @override
  ImageProvider fromJson(json) => const TypedImageProviderConverter()
      .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) => const TypedImageProviderConverter().toJson(object);
}

class TypedImageProviderConverter
    extends JsonConverter<ImageProvider, Map<String, dynamic>> {
  const TypedImageProviderConverter();
  @override
  ImageProvider fromJson(Map<String, dynamic> json) {
    return const NullableImageProviderConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(ImageProvider value) {
    return const NullableImageProviderConverter().toJson(value)!;
  }
}
