part of theme_json_converter;

class NullableMainAxisAlignmentConverter
    extends JsonConverter<MainAxisAlignment?, String?> {
  const NullableMainAxisAlignmentConverter();

  @override
  MainAxisAlignment? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'center':
        return MainAxisAlignment.center;

      case 'end':
        return MainAxisAlignment.end;

      case 'spaceAround':
        return MainAxisAlignment.spaceAround;

      case 'spaceBetween':
        return MainAxisAlignment.spaceBetween;

      case 'spaceEvenly':
        return MainAxisAlignment.spaceEvenly;

      case 'start':
        return MainAxisAlignment.start;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(MainAxisAlignment? value) {
    if (value == null) return null;

    switch (value) {
      case MainAxisAlignment.center:
        return 'center';
        break;
      case MainAxisAlignment.end:
        return 'end';
        break;
      case MainAxisAlignment.spaceAround:
        return 'spaceAround';
        break;
      case MainAxisAlignment.spaceBetween:
        return 'spaceBetween';
        break;
      case MainAxisAlignment.spaceEvenly:
        return 'spaceEvenly';
        break;
      case MainAxisAlignment.start:
        return 'start';
        break;
    }

    throw 'Json_Unsuported_Value';
  }
}

class MainAxisAlignmentConverter
    extends JsonConverter<MainAxisAlignment, String> {
  const MainAxisAlignmentConverter();

  @override
  MainAxisAlignment fromJson(String json) {
    return const NullableMainAxisAlignmentConverter().fromJson(json)!;
  }

  @override
  String toJson(MainAxisAlignment value) {
    return const NullableMainAxisAlignmentConverter().toJson(value)!;
  }
}
