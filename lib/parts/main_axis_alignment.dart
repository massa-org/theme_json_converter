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
  String? toJson(MainAxisAlignment? object) {
    if (object == null) return null;

    switch (object) {
      case MainAxisAlignment.center:
        return 'center';
      case MainAxisAlignment.end:
        return 'end';
      case MainAxisAlignment.spaceAround:
        return 'spaceAround';
      case MainAxisAlignment.spaceBetween:
        return 'spaceBetween';
      case MainAxisAlignment.spaceEvenly:
        return 'spaceEvenly';
      case MainAxisAlignment.start:
        return 'start';
    }
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
  String toJson(MainAxisAlignment object) {
    return const NullableMainAxisAlignmentConverter().toJson(object)!;
  }
}
