part of theme_json_converter;

class NullableMainAxisSizeConverter
    extends JsonConverter<MainAxisSize?, String?> {
  const NullableMainAxisSizeConverter();

  @override
  MainAxisSize? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'max':
        return MainAxisSize.max;

      case 'min':
        return MainAxisSize.min;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(MainAxisSize? object) {
    if (object == null) return null;

    switch (object) {
      case MainAxisSize.max:
        return 'max';
      case MainAxisSize.min:
        return 'min';
    }
  }
}

class MainAxisSizeConverter extends JsonConverter<MainAxisSize, String> {
  const MainAxisSizeConverter();

  @override
  MainAxisSize fromJson(String json) {
    return const NullableMainAxisSizeConverter().fromJson(json)!;
  }

  @override
  String toJson(MainAxisSize object) {
    return const NullableMainAxisSizeConverter().toJson(object)!;
  }
}
