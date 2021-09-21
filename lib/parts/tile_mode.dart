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
  String? toJson(TileMode? value) {
    if (value == null) return null;

    switch (value) {
      case TileMode.clamp:
        return 'clamp';
        break;

      case TileMode.decal:
        return 'decal';
        break;

      case TileMode.mirror:
        return 'mirror';
        break;

      case TileMode.repeated:
        return 'repeated';
        break;
    }

    throw 'Json_Unsuported_Value';
  }
}

class TileModeConverter extends JsonConverter<TileMode, String> {
  const TileModeConverter();

  @override
  TileMode fromJson(String json) {
    return const NullableTileModeConverter().fromJson(json)!;
  }

  @override
  String toJson(TileMode value) {
    return const NullableTileModeConverter().toJson(value)!;
  }
}
