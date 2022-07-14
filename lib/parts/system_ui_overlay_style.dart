part of theme_json_converter;

class NullableSystemUiOverlayStyleConverter
    extends JsonConverter<SystemUiOverlayStyle?, String?> {
  const NullableSystemUiOverlayStyleConverter();

  @override
  SystemUiOverlayStyle? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'dark':
        return SystemUiOverlayStyle.dark;

      case 'light':
        return SystemUiOverlayStyle.light;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(SystemUiOverlayStyle? object) {
    if (object == null) return null;

    if (object == SystemUiOverlayStyle.dark) {
      return 'dark';
    } else if (object == SystemUiOverlayStyle.light) {
      return 'light';
    }

    throw 'Json_Unsuported_Value';
  }
}

class SystemUiOverlayStyleConverter
    extends JsonConverter<SystemUiOverlayStyle, String> {
  const SystemUiOverlayStyleConverter();

  @override
  SystemUiOverlayStyle fromJson(String json) {
    return const NullableSystemUiOverlayStyleConverter().fromJson(json)!;
  }

  @override
  String toJson(SystemUiOverlayStyle object) {
    return const NullableSystemUiOverlayStyleConverter().toJson(object)!;
  }
}
