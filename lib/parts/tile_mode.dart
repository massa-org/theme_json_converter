part of theme_json_converter;

class NullableTileModeConverter extends JsonConverter<TileMode?, String?> {
  const NullableTileModeConverter();

  @override
  TileMode? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'clamp':
        return TileMode.clamp;

      case 'decal':
        return TileMode.decal;

      case 'mirror':
        return TileMode.mirror;

      case 'repeated':
        return TileMode.repeated;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(TileMode? object) {
    if (object == null) return null;

    switch (object) {
      case TileMode.clamp:
        return 'clamp';

      case TileMode.decal:
        return 'decal';

      case TileMode.mirror:
        return 'mirror';

      case TileMode.repeated:
        return 'repeated';
    }
  }
}

class TileModeConverter extends JsonConverter<TileMode, String> {
  const TileModeConverter();

  @override
  TileMode fromJson(String json) {
    return const NullableTileModeConverter().fromJson(json)!;
  }

  @override
  String toJson(TileMode object) {
    return const NullableTileModeConverter().toJson(object)!;
  }
}
