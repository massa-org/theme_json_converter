part of theme_json_converter;

class NullableImageProviderConverter
    extends JsonConverter<ImageProvider?, Map<String, dynamic>?> {
  const NullableImageProviderConverter();

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
  Map<String, dynamic>? toJson(ImageProvider? object) {
    if (object == null) return null;

    assert(object is AssetImage ||
        object is MemoryImage ||
        object is NetworkImage);
    if (object is AssetImage) {
      return <String, dynamic>{
        'assetName': object.assetName,
        'package': object.package,
        'type': 'asset',
      };
    } else if (object is MemoryImage) {
      return <String, dynamic>{
        'bytes': base64Encode(object.bytes),
        'scale': object.scale,
        'type': 'memory',
      };
    } else if (object is NetworkImage) {
      return <String, dynamic>{
        'headers': object.headers,
        'scale': object.scale,
        'type': 'network',
        'url': object.url,
      };
    }

    throw 'Json_Unsuported_Value';
  }
}

class ImageProviderConverter
    extends JsonConverter<ImageProvider, Map<String, dynamic>> {
  const ImageProviderConverter();

  @override
  ImageProvider fromJson(Map<String, dynamic> json) {
    return const NullableImageProviderConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(ImageProvider object) {
    return const NullableImageProviderConverter().toJson(object)!;
  }
}
