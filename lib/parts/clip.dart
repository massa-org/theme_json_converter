part of theme_json_converter;

class NullableClipConverter extends JsonConverter<Clip?, String?> {
  const NullableClipConverter();

  @override
  Clip? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'antiAlias':
        return Clip.antiAlias;

      case 'antiAliasWithSaveLayer':
        return Clip.antiAliasWithSaveLayer;

      case 'hardEdge':
        return Clip.hardEdge;

      case 'none':
        return Clip.none;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(Clip? object) {
    if (object == null) return null;

    switch (object) {
      case Clip.antiAlias:
        return 'antiAlias';
      case Clip.antiAliasWithSaveLayer:
        return 'antiAliasWithSaveLayer';
      case Clip.hardEdge:
        return 'hardEdge';
      case Clip.none:
        return 'none';
    }
  }
}

class ClipConverter extends JsonConverter<Clip, String> {
  const ClipConverter();

  @override
  Clip fromJson(String json) {
    return const NullableClipConverter().fromJson(json)!;
  }

  @override
  String toJson(Clip object) {
    return const NullableClipConverter().toJson(object)!;
  }
}
