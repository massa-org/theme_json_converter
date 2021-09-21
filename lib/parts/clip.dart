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
  String? toJson(Clip? value) {
    if (value == null) return null;

    switch (value) {
      case Clip.antiAlias:
        return 'antiAlias';
        break;
      case Clip.antiAliasWithSaveLayer:
        return 'antiAliasWithSaveLayer';
        break;
      case Clip.hardEdge:
        return 'hardEdge';
        break;
      case Clip.none:
        return 'none';
        break;
    }

    throw 'Json_Unsuported_Value';
  }
}

class ClipConverter extends JsonConverter<Clip, String> {
  const ClipConverter();

  @override
  Clip fromJson(String json) {
    return const NullableClipConverter().fromJson(json)!;
  }

  @override
  String toJson(Clip value) {
    return const NullableClipConverter().toJson(value)!;
  }
}
