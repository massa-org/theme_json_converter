part of theme_json_converter;

class NullableDecorationPositionConverter
    extends JsonConverter<DecorationPosition?, String?> {
  const NullableDecorationPositionConverter();

  @override
  DecorationPosition? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'background':
        return DecorationPosition.background;

      case 'foreground':
        return DecorationPosition.foreground;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(DecorationPosition? value) {
    if (value == null) return null;

    switch (value) {
      case DecorationPosition.background:
        return 'background';
        break;
      case DecorationPosition.foreground:
        return 'foreground';
        break;
    }

    throw 'Json_Unsuported_Value';
  }
}

class DecorationPositionConverter
    extends JsonConverter<DecorationPosition, String> {
  const DecorationPositionConverter();

  @override
  DecorationPosition fromJson(String json) {
    return const NullableDecorationPositionConverter().fromJson(json)!;
  }

  @override
  String toJson(DecorationPosition value) {
    return const NullableDecorationPositionConverter().toJson(value)!;
  }
}
